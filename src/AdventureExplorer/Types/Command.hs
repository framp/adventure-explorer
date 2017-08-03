module AdventureExplorer.Types.Command where

import Data.Char (toLower)
import Data.Maybe (fromMaybe)
import System.Console.Haskeline

import AdventureExplorer.Logic.Util (splitOnFirst)

type Command = (String, String)

makeCommand :: IO Command
makeCommand = do
  (command, argument) <- splitOnFirst ' ' <$> getUserCommand
  return (toLower <$> command, argument)
  where
    getUserCommand :: IO String
    getUserCommand = runInputT defaultSettings $ (fromMaybe "") <$> (getInputLine "λ ")