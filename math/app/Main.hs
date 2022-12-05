module Main where

import Lib
import Data.Bool
import Data.List
import Data.Function (on)
import System.Random
import Control.Monad(when, replicateM) 
import Test.QuickCheck

-- stack run math-game

-- choose hand - four numbers

-- init board
    -- numbers 1 to 20, minus the 4 numbers chosen
    -- set all numbers to unsolved
initBoard :: [Int] -> [(Int, Bool)]
initBoard hand = zip ([1..20] \\ hand) (repeat False)

-- print board
    -- add a star if unsolved
showTuple :: (Int, Bool) -> String
showTuple (a, False) = show a ++ "*"
showTuple (a, True) = show a

printBoard :: [(Int, Bool)] -> IO()
printBoard board = mapM_ (putStrLn . showTuple) board

-- print hand
printHand :: [Int] -> IO()
printHand = putStrLn.unwords.map show 

-- check if the board has been solved i.e. if all numbers are true
isBoardSolved :: [(Int, Bool)] -> Bool
isBoardSolved board = False

isNumSolved :: (Int, Bool) -> Bool
isNumSolved num = False

doubleNum :: Int -> Int
doubleNum n = n * 2

prop_doubleNum :: Int -> Bool
prop_doubleNum n = doubleNum n == 2 * n


main :: IO ()
main = do

    putStrLn "hand"
    let hand = [1, 3, 7, 10]
    printHand hand

    putStrLn "board"
    let board = initBoard hand
    printBoard board
