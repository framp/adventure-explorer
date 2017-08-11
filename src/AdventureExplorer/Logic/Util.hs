module AdventureExplorer.Logic.Util where

import System.Random (mkStdGen, next, randomR)
import Data.Maybe (fromMaybe)
import Data.List (elemIndex)
import Data.Char (ord)

getRandomMessage :: Int -> String -> [String] -> String
getRandomMessage randomness identifier messages = 
  messages !! (fst . randomR (0, length messages - 1) $ makeGenerator seed)
  where 
    -- http://publications.lib.chalmers.se/records/fulltext/183348/local_183348.pdf
    -- we take the second value because of its better distribution
    makeGenerator = snd . next . mkStdGen
    seed = foldl (+) randomness $ map ord identifier

iff :: (a -> Bool) -> a -> Maybe a
iff cond val | cond val  = Just val
             | otherwise = Nothing

splitOnFirst :: Char -> String -> (String, String)
splitOnFirst sep val = (flip splitOn val) . (fromMaybe (length val)) . (elemIndex sep) $ val
  where 
    splitOn index val = (take index val, drop (index+1) val)
