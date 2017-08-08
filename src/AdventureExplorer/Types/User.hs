module AdventureExplorer.Types.User where

import System.Random (getStdRandom, random)
import Data.Time (ZonedTime, getZonedTime, timeOfDayToDayFraction, localTimeOfDay, zonedTimeToLocalTime)

data Time = Morning | Afternoon | Night

data User = User
  { randomness :: Int
  , time :: Time
  , spellBookFound :: Bool } deriving (Show)
  
nextTime :: Time -> Time
nextTime Morning = Afternoon
nextTime Afternoon = Night
nextTime Night = Morning

instance Show Time where
  show Morning = "morning"
  show Afternoon = "afternoon"
  show Night = "night"

makeUser :: IO User
makeUser = do
  randomness <- getStdRandom random
  timePeriod <- getTimePeriod <$> getTimeFract <$> getZonedTime
  let user = User randomness timePeriod False
  return user
  where 
    getTimeFract :: ZonedTime -> Rational
    getTimeFract = timeOfDayToDayFraction . localTimeOfDay . zonedTimeToLocalTime
    getTimePeriod :: Rational -> Time
    getTimePeriod fract
      | fract > (22/24) || fract <= (6/24) = Night
      | fract > (6/24) && fract <= (14/24) = Morning
      | fract > (14/24) && fract <= (22/24) = Afternoon  