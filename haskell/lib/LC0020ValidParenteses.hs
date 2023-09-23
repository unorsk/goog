module LC0020ValidParenteses where

import Control.Monad.ST.Strict (runST)
import Data.Foldable (traverse_)
import Data.Functor ((<&>))
import Data.STRef (readSTRef)
import Data.STRef.Strict (newSTRef, writeSTRef)

isValidClosingChar :: Char -> Char -> Bool
isValidClosingChar ')' '(' = True
isValidClosingChar '}' '{' = True
isValidClosingChar ']' '[' = True
isValidClosingChar _ _ = False

isValid :: String -> Bool
isValid str =
  runST $ do
    stack <- newSTRef []
    traverse_
      ( \c -> do
          s <- readSTRef stack
          if isValidClosingChar c (head s)
            then writeSTRef stack $ tail s -- remove from stack
            else writeSTRef stack (c : s)
      )
      str
    -- ss <- readSTRef stack
    -- return $ null ss
    readSTRef stack <&> null

isValidNoStRef :: String -> Bool
isValidNoStRef str =
  null $
    foldr (\c s -> if isValidClosingChar c (head s) then tail s else c : s) "" $
      reverse str

isValidNoStRef' :: String -> Bool
isValidNoStRef' =
  null
    . reverse
    . foldr (\c s -> if isValidClosingChar c (head s) then tail s else c : s) ""
