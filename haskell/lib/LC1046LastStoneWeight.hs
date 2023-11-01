module LC1046LastStoneWeight where

import Data.List (insert)

lastStoneWeight :: [Int] -> Int
lastStoneWeight stones =
  1

-- let s = foldr (\n acc -> insert n acc) [] stones
--  in case s of
--       [] -> 0
--       [x] -> x
--       _ -> last s