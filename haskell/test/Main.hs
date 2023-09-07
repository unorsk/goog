module Main (main) where

import Test.Hspec
import LC

main :: IO ()
main =
  hspec $ do
    describe "isValidPalindrome" $ do
      it "empty palindrome" $
        isValidPalindrome "" `shouldBe` True