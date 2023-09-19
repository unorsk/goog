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