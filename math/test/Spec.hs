-- https://hspec.github.io/
-- stack test

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Lib
import Math 

main :: IO ()
main = hspec $ do
  {- describe "Prelude.head" $ do
    it "returns the first element of a list" $ do
      head [23 ..] `shouldBe` (23 :: Int)

    it "returns the first element of an *arbitrary* list" $
      property $ \x xs -> head (x:xs) == (x :: Int)

    it "throws an exception if used with an empty list" $ do
      evaluate (head []) `shouldThrow` anyException -}

  describe "isBoardSolved" $ do
    it "returns true if all the numbers are solved" $ do
      isBoardSolved [(1, True), (2, True)] `shouldBe` True
    it "returns false if at least one number is unsolved" $ do
      isBoardSolved [(1, True), (2, False)] `shouldBe` False
      isBoardSolved [(1, False), (2, False)] `shouldBe` False

  describe "evalExp" $ do
    it "evaluates an expression" $ do
      evalExp (Operator Add (Num 3) (Num 2)) `shouldBe` (5 :: Int)
      evalExp (Operator Sub (Num 3) (Num 2)) `shouldBe` (1 :: Int)

