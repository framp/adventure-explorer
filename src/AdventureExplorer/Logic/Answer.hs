module AdventureExplorer.Logic.Answer where

import System.Directory (setCurrentDirectory, doesFileExist, doesDirectoryExist)
import Data.Conduit.Shell (run, shell)
import Data.List (find)
import Data.Maybe (fromMaybe)

import AdventureExplorer.Types.Location
import AdventureExplorer.Types.User
import AdventureExplorer.Types.Command
import AdventureExplorer.Logic.Util (getRandomMessage)
import AdventureExplorer.Data.Messages

processAnswer :: User -> Location -> Command -> IO (User, Bool, Bool)
processAnswer user location (command, argument) = 
  case command of 
    "go"    -> convertDirections $ \argument -> 
      requireDirectory argument $ do
        let newTime = nextTime timeU
        let newUser = User randomnessU newTime spellbookU
        setCurrentDirectory argument
        putStrLn $ describe (currentPathL ++ argument) gotoDescriptions ++ argument ++ " @ " ++ (show newTime)
        return (newUser, not short, not quit)
    "look"  -> requireFile argument $ do
      putStrLn $ describe (currentPathL ++ argument) pictureDescriptions
      return (user, short, not quit)
    "read"  -> requireFile argument $ do
      putStrLn $ describe (currentPathL ++ argument) bookDescriptions
      return (user, short, not quit)
    "open"  -> requireFile argument $ do
      putStrLn $ describe (currentPathL ++ argument) boxDescriptions
      return (user, short, not quit)
    "steal" ->
      if spellBookL then do 
        putStrLn $ describe currentPathL spellBookDescriptions
        let newUser = User randomnessU timeU True
        return (newUser, short, not quit)
      else do
        putStrLn $ describe currentPathL cantDescriptions
        return (user, short, not quit)
    "sleep" -> do
      putStrLn $ describe currentPathL sleepDescriptions
      let newUser = User randomnessU Morning spellbookU
      return (newUser, short, quit)
    "cast" -> do
      run (shell argument)
      putStrLn ""
      return (user, short, not quit)
    _       -> do
      putStrLn $ describe currentPathL cantDescriptions
      return (user, short, not quit)
  where 
    quit = True
    short = True
    currentPathL = currentPath location
    spellBookL = spellBook location
    randomnessU = randomness user
    timeU = time user
    spellbookU = spellBookFound user
    describe :: String -> [String] -> String
    describe = getRandomMessage $ randomness user
    requireFile :: FilePath -> IO (User, Bool, Bool) -> IO (User, Bool, Bool)
    requireFile = requirePath doesFileExist
    requireDirectory :: FilePath -> IO (User, Bool, Bool) -> IO (User, Bool, Bool)
    requireDirectory = requirePath doesDirectoryExist
    requirePath :: (FilePath -> IO Bool) -> FilePath -> IO (User, Bool, Bool) -> IO (User, Bool, Bool)
    requirePath doesExist path action = do
      pathExists <- doesExist path
      if pathExists then action
        else do 
          putStrLn $ describe currentPathL errorDescriptions
          return (user, short, not quit)
    convertDirections :: (FilePath -> IO (User, Bool, Bool)) -> IO (User, Bool, Bool)
    convertDirections answer = answer $ fromMaybe argument directionPath
      where
        directionPath = snd <$> find ((==) argument . fst) directions
        directions = getDirections location 
