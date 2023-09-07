module GroupAnagrams where

import Data.List (sort)
import Data.Map qualified as Map

groupAnagrams :: [String] -> [[String]]
groupAnagrams strs =
  let anagramMap =
        foldr
          ( \str acc ->
              Map.insertWith (++) (sort str) [str] acc
          )
          Map.empty
          strs
   in Map.elems anagramMap
