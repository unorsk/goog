module LC0349TopKFrequentElements where

import Data.List (sortBy)
import Data.Map qualified as Map

topKFrequentElements :: [Integer] -> Integer -> [Integer]
topKFrequentElements nums k =
  let mapElementsFrequency = foldr (\n acc -> Map.insertWith (+) n 1 acc) Map.empty nums
      s =
        sortBy
          (\(_, freq1) (_, freq2) -> compare freq2 freq1)
          (Map.toList mapElementsFrequency)
   in map fst (take (fromInteger k) s)
