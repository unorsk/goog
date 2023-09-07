{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Redundant if" #-}
module LC0126ValidPalindrome (isValidPalindrome) where

import Data.Char
import Data.Vector qualified as Vector

isValidPalindrome :: String -> Bool
isValidPalindrome s = doWhile 0 (length s - 1)
 where
  vec = Vector.fromList s
  isNotAlphaNum = not . isAlphaNum
  doWhile (left :: Int) (right :: Int)
    | left > right = True
    | otherwise =
        if isNotAlphaNum (vec Vector.! left)
          then doWhile (left + 1) right
          else
            if isNotAlphaNum (vec Vector.! right)
              then doWhile left (right - 1)
              else
                if toLower (vec Vector.! left) /= toLower (vec Vector.! right)
                  then False
                  else doWhile (left + 1) (right - 1)