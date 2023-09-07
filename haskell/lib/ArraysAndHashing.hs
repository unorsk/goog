module ArraysAndHashing (containsDuplicate) where

import Data.Foldable (find)
import Data.HashSet (empty, insert, member)

containsDuplicate :: [Int] -> Bool
containsDuplicate nums =
  let m = empty
   in case find
        ( \a ->
            member a m || (let _ = insert a m in False)
        )
        nums of
        Just _ -> True
        _ -> False