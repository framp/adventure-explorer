module AdventureExplorer.Types.User where

import System.Random (getStdRandom, random)
import Data.Time (ZonedTime, getZonedTime, timeOfDayToDayFraction, localTimeOfDay, zonedTimeToLocalTime)
import System.Directory (doesFileExist, getAppUserDataDirectory, createDirectoryIfMissing)
import System.FilePath (takeDirectory)

data Time = Morning | Afternoon | Night deriving (Show, Read)

data User = User
  { randomness :: Int
  , time :: Time
  , spellBookFound :: Bool } deriving (Show, Read)
  
nextTime :: Time -> Time
nextTime Morning = Afternoon
nextTime Afternoon = Night
nextTime Night = Morning

configurationFile :: String
configurationFile = "adventure-explorer/main.conf"

initUser :: IO User
initUser = do 
  path <- getAppUserDataDirectory configurationFile
  exists <- doesFileExist path
  if exists 
    then read <$> (readFile path)
    else makeUser >>= persistUser

persistUser :: User -> IO User
persistUser user = do
  path <- getAppUserDataDirectory configurationFile
  createDirectoryIfMissing True $ takeDirectory path
  writeFile path $ show user 
  return user

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