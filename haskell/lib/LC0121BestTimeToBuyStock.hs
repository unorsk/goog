module LC0121BestTimeToBuyStock where

maxProfit :: [Int] -> Int
maxProfit prices =
  doMaxProfitPrice 0 1 0
 where
  doMaxProfitPrice :: Int -> Int -> Int -> Int
  doMaxProfitPrice left right profit
    | right >= length prices = profit
    | otherwise =
        if (prices !! left) < (prices !! right)
          then
            doMaxProfitPrice left (right + 1) $
              max (prices !! right - prices !! left) profit
          else doMaxProfitPrice right (right + 1) profit