module LC0011ContainerWithMostWater where

maxArea :: [Int] -> Int
maxArea heights =
  doWhile 0 (length heights - 1) 0
 where
  doWhile :: Int -> Int -> Int -> Int
  doWhile left right maxvalue
    | left < right =
        let w = right - left
            h = min (heights !! left) (heights !! right)
            area = max (w * h) maxvalue
         in if (heights !! left) < (heights !! right)
              then doWhile (left + 1) right area
              else doWhile left (right - 1) area
    | otherwise = maxvalue