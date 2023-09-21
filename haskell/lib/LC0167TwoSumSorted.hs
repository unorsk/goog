module LC0167TwoSumSorted where

twoSumSorted :: [Int] -> Int -> Maybe (Int, Int)
twoSumSorted nums target = twoSumSorted' 0 (length nums - 1)
 where
  twoSumSorted' :: Int -> Int -> Maybe (Int, Int)
  twoSumSorted' l r
    | l >= r = Nothing
    | (nums !! l) + (nums !! r) > target = twoSumSorted' l (r - 1)
    | (nums !! l) + (nums !! r) < target = twoSumSorted' (l + 1) r
    | otherwise = Just (l + 1, r + 1)