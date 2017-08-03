module AdventureExplorer.Types.User where

data Time = Morning | Afternoon | Night deriving (Show)

data User = User
  { randomness :: Int
  , time :: Time
  , spellBookFound :: Bool } deriving (Show)
  
nextTime :: Time -> Time
nextTime Morning = Afternoon
nextTime Afternoon = Night
nextTime Night = Morning

makeUser :: IO User
makeUser = do
  -- TODO generate random on first run and store in config
  return $ User 42 Morning False 