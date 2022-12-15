module Lib
    ( createHand, printHand, initBoard, updateBoard, printBoard, isBoardSolved
    ) where

import Data.Bool
import Data.List
import Data.Function (on)
import Control.Monad(when, replicateM) 
import System.Random
import Test.QuickCheck

-- init board
    -- numbers 1 to 20, minus the 4 numbers chosen
    -- set all numbers to unsolved
initBoard :: [Int] -> [(Int, Bool)]
initBoard hand = zip ([1..20] \\ hand) (repeat False)

-- create hand
createHand :: [IO Int]
createHand = replicate 4 (drawInt 1 13)

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

-- update the board when a number is solved
updateBoard :: Int -> [(Int, Bool)] -> [(Int, Bool)]
updateBoard i board = a ++ ([updated i board]) ++ b
    where
        a = take i board
        b = drop (i + 1) board
        updated i board = updateNum $ board !! i
    
updateNum :: (Int, Bool) -> (Int, Bool)
updateNum (n, _) = (n, True) 

-- generate a random number between 1 and 13
drawInt :: Int -> Int -> IO Int
drawInt x y = getStdRandom (randomR (x,y))

-- | check if done

isBoardSolved :: [(Int, Bool)] -> Bool
isBoardSolved [] = True
isBoardSolved (n:board) = isNumSolved n && isBoardSolved board

isNumSolved :: (Int, Bool) -> Bool
isNumSolved num = snd num