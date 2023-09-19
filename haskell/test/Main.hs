module Main (main) where

import LC
import Test.Hspec

-- TODO tests twoSumSorted

main :: IO ()
main =
  hspec $ do
    describe "isValidPalindrome" $ do
      it "empty palindrome" $
        isValidPalindrome "" `shouldBe` True
    describe "twoSum" $ do
      it "basic twoSum" $
        twoSum [2, 7, 5, 11, 15] 9 `shouldBe` Just (0, 1)
      it "basic twoSum1" $
        twoSum [3, 3] 6 `shouldBe` Just (0, 1)
      it "basic twoSum2" $
        twoSum [3, 2, 4] 6 `shouldBe` Just (1, 2)
      it "basic twoSum nothing" $
        twoSum [] 6 `shouldBe` Nothing
      it "basic twoSum nothing1" $
        twoSum [1] 6 `shouldBe` Nothing
      it "basic twoSum nothing2" $
        twoSum [1, 1] 6 `shouldBe` Nothing
    describe "twoSumSorted" $ do
      it "simple twoSumSorted" $
        twoSumSorted [2, 7, 11, 15] 9 `shouldBe` Just (1, 2)
      it "simple twoSumSorted1" $
        twoSumSorted [2, 3, 4] 6 `shouldBe` Just (1, 3)
      it "simple twoSumSorted2" $
        twoSumSorted [-1, 0] (-1) `shouldBe` Just (1, 2)
      it "simple twoSumSorted3" $
        twoSumSorted [2, 0] 1 `shouldBe` Nothing
      it "simple twoSumSorted4" $
        twoSumSorted [] 1 `shouldBe` Nothing