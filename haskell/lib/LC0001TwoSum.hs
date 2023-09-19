module LC0001TwoSum where

import Data.IntMap (IntMap)
import Data.IntMap.Strict (empty, insert, member, (!))

twoSum :: [Int] -> Int -> Maybe (Int, Int)
twoSum nums target =
  twoSum' (length nums - 1) empty
 where
  twoSum' :: Int -> IntMap Int -> Maybe (Int, Int)
  twoSum' i m
    | i < 0 = Nothing
    | member (target - (nums !! i)) m = Just (i, m ! (target - (nums !! i)))
    | otherwise = twoSum' (i - 1) (insert (nums !! i) i m)