module AdventureExplorer.Types.Location where

import System.Environment (lookupEnv)
import System.Directory (getCurrentDirectory, listDirectory, doesDirectoryExist)
import System.FilePath (takeDirectory, takeBaseName, takeExtension, (</>))
import Control.Lens ((^?), element)
import Control.Monad.Extra (partitionM)
import Data.List (intercalate, findIndex, (\\))
import Data.List.Split (splitOn)
import Data.Char (toLower)
import Data.Maybe (fromMaybe, catMaybes)

import AdventureExplorer.Types.User
import AdventureExplorer.Data.Messages
import AdventureExplorer.Data.FileExtensions (bookExtensions, pictureExtensions)
import AdventureExplorer.Logic.Util (getRandomMessage, iff)

data Location = Location 
  { currentPath :: FilePath
  , destinations :: [FilePath]
  , siblingDestinations :: (Maybe FilePath, Maybe FilePath)
  , books :: [FilePath]
  , pictures :: [FilePath]
  , boxes :: [FilePath]
  , spellBook :: Bool } deriving (Show)

makeLocation :: IO Location
makeLocation = do
  currentDirectory <- getCurrentDirectory
  (directories, files) <- getDirectoriesFiles currentDirectory
  parentDirectories <- getParentDirectories currentDirectory
  let currentDirectoryIndex = fromMaybe (-1) $ findIndex ((==) $ takeBaseName currentDirectory) parentDirectories
  let previousDirectory = (</>) ".." <$> parentDirectories ^? element (currentDirectoryIndex-1)
  let nextDirectory = (</>) ".." <$> parentDirectories ^? element (currentDirectoryIndex+1)
  let books = filter (hasExtension bookExtensions) files
  let pictures = filter (hasExtension pictureExtensions) files
  let boxes = files \\ (books ++ pictures)
  pathEnv <- splitOn ":" <$> fromMaybe "" <$> lookupEnv "PATH"
  let inPath = elem currentDirectory pathEnv
  return $ Location currentDirectory directories (previousDirectory, nextDirectory) books pictures boxes inPath
  where
    getDirectoriesFiles :: FilePath -> IO ([FilePath], [FilePath])
    getDirectoriesFiles dir = listDirectory dir >>= partitionM doesDirectoryExist
    getParentDirectories :: FilePath -> IO [FilePath]
    getParentDirectories = fromMaybe (return []) . ((fmap snd <$> getDirectoriesFiles) <$>) . getParentDirectory
    getParentDirectory :: FilePath -> Maybe FilePath
    getParentDirectory dir = iff ((/=) dir) $ takeDirectory dir
    hasExtension :: [String] -> String -> Bool 
    hasExtension extensions = (flip elem $ extensions) . (map toLower) . takeExtension

describeLocation :: Bool -> User -> Location -> IO ()
describeLocation short user location = do
  putStrLn $ intercalate "" $ 
    [ (intercalate "" $ replicate 64 "=") ++ "\n" ] ++ 
    (if (not short) then
      [ describe $ locationDescriptions timeU
      , describe signDescriptions
      , currentPathL ++ "\n"
      , "\n"
      , if (length destinationsL > 1) then describe directionSignDescriptions else ""
      , describeItems "book" "books" $ length booksL
      , describeItems "picture" "pictures" $ length picturesL
      , describeItems "box" "boxes" $ length boxesL
      , if spellBookL then describe spellBookFoundDescriptions else ""
      , (intercalate "" $ replicate 64 "=") ++ "\n" ] else []) ++ 

      [ "You can GO (go) " ++ (intercalate ", " directions) ++ "\n"
      , if (length destinationsL > 1) then "or GO (go) following one of the signs: " ++ (intercalate ", " $ tail destinationsL) ++ "\n" else ""
      , if (length booksL > 0) then "or READ (read) one of the books: " ++ (intercalate ", " booksL) ++ "\n" else ""
      , if (length picturesL > 0) then "or LOOK (look) one of the pictures: " ++ (intercalate ", " picturesL) ++ "\n" else ""
      , if (length boxesL > 0) then "or OPEN (open) one of the boxes: " ++ (intercalate ", " boxesL) ++ "\n" else "" 
      , if spellBookL then "or STEAL (steal) the spell book\n" else ""
      , if spellBookU then "or CAST (cast) a spell\n" else "" 
      , "or WAIT (wait) to kill time at this location\n"
      , "or SLEEP (sleep) to quit this world for a bit.\n" 
      , (intercalate "" $ replicate 64 "=") ++ "\n" ]
  where 
    currentPathL = currentPath location
    destinationsL = take 5 $ destinations location
    picturesL = take 5 $ pictures location
    booksL = take 5 $ books location
    boxesL = take 5 $ boxes location
    spellBookL = spellBook location
    randomnessU = randomness user
    spellBookU = spellBookFound user
    timeU = time user
    directions = printDirection <$> getDirections location
    printDirection :: (String, FilePath) -> String
    printDirection (direction, directory) = direction ++ " (" ++ directory ++ ")"
    describe :: [String] -> String
    describe = getRandomMessage randomnessU currentPathL 
    describeItems :: String -> String -> Int -> String
    describeItems itemSingular itemPlural quantity 
      | quantity <= 0  = ""
      | quantity == 1  = "There is one " ++ itemSingular ++ "\n"
      | quantity == 2  = "There is a couple of " ++ itemPlural ++ "\n"
      | quantity <= 5  = "There are a few " ++ itemPlural ++ "\n"
      | quantity <= 10 = "There are some " ++ itemPlural ++ "\n"
      | quantity <= 50 = "There are a lot of " ++ itemPlural ++ "\n"
      | otherwise      = "There is a ridicolous amount of " ++ itemPlural ++ "\n"
      
getDirections :: Location -> [(String, FilePath)]
getDirections location = 
  [("north", "..")] ++ catMaybes 
    [ (,) "south" <$> firstDestination
    , (,) "west" <$> previousDestination
    , (,) "east" <$> nextDestination ]
  where 
    (previousDestination, nextDestination) = siblingDestinations location
    firstDestination = (destinations location) ^? element 0