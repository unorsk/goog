module ArraysAndHashing (containsDuplicate) where

import Data.HashSet (empty, member, insert)
import Data.Foldable (find)
import Data.Maybe (fromMaybe)
-- import Data.HashSet (HashSet, empty)

containsDuplicate :: [Int] -> Bool
containsDuplicate nums =
  let m = empty in
    case find (\a ->
      member a m || (let _ = insert a m in False)
      ) nums of
      Just _ -> True
      _ -> False