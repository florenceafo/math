module Main where

import Lib
import Math
import Data.Bool
import Data.List
import Data.Function (on)
import System.Random
import Control.Monad(when, replicateM) 
import Test.QuickCheck

-- stack run math-game

main :: IO ()
main = do

    putStrLn "hand"
    let hand = [1, 3, 7, 10]
    --printHand hand

    putStrLn "board"
    let board = initBoard hand
    -- printBoard board

    printBoard $ updateBoard 5 board

    -- let e = printExp (Operator Add (Num 1) (Num 2))
    -- print e
    -- let e2 = (Operator Sub (Num 20) (Num 2))
    -- let res = evalExp e2
    -- print res

    print ""