module Main where

import AdventureExplorer.Types.Location
import AdventureExplorer.Types.User
import AdventureExplorer.Types.Command
import AdventureExplorer.Logic.Answer

main :: IO ()
main = welcome >> makeUser >>= app False

welcome :: IO()
welcome = putStrLn "You wake up in an unknown place. It's vaguely familiar but alien at the same time.\n"

app :: Bool -> User -> IO ()
app short user = do
  location <- makeLocation
  describeLocation short user location
  command <- makeCommand
  (newUser, short, over) <- processAnswer user location command
  --TODO save newUser on file if /= user
  if (not over) then app short newUser else return ()