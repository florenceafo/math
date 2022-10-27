module Main where

import Lib
import Data.Bool
import Data.List
import Data.Function (on)
import System.Random
import Control.Monad(when, replicateM) 

-- stack run math-game

-- allBlankBoard :: [Maybe Int]
-- allBlankBoard = [Nothing | _ <- [1..16]]

chooseNumbers :: [Maybe Int] -> [Int] -> [Maybe Int]
chooseNumbers a b = a \\ map Just b


printBoard :: [Maybe Int] -> IO()
printBoard b =  (putStrLn.unwords.map showNumber) b -- alt: map $ show $ map b 

showNumber :: Maybe Int -> String
showNumber (Just n) = show n
showNumber _        = "-"

-- addNumberToBoard :: [Maybe Int] -> Int -> [Maybe Int]
-- addNumberToBoard (b:bs) _ = []
-- addNumberToBoard b n =  init b ++ [Just n]

-- method 1: prints random list of numbers, between 1 and 20
-- randomListOne :: Int -> IO [Int]
-- randomListOne n = sequence $ replicate n $ randomRIO (1,20::Int)

-- method 2: prints random list of numbers, between 1 and 20
-- randomListTwo :: Int -> IO([Int])
-- randomListTwo 0 = return []
-- randomListTwo n = do
--     r  <- randomRIO (1,20)
--     rs <- randomListTwo (n-1)
--     return (r:rs) 

-- get s random number
-- drawInt :: IO Int
-- drawInt = getStdRandom(randomR (1, 20))

-- to do: use this after shuffling numbers
-- createInitBoard :: [(Integer, Bool)]
-- createInitBoard = zip [1..] $ take 20 (repeat False)

main :: IO ()
main = do
    -- printBoard allBlankBoard
    -- get user input
    -- putStrLn "Enter a number"
    -- input <- getLine -- read user input
    -- putStrLn input
    -- add input to board 
    -- let b = allBlankBoard
    -- let updatedBoard = addNumberToBoard b $ read input 
    -- printBoard updatedBoard

    -- prints random list of numbers
    -- putStrLn "random numbers, between 1 and 20, with duplicates"
    -- board2 <- randomListOne 20
    -- let boardmap = map Just board2
    -- printBoard boardmap
    -- prints random list ------

    -- prints a list of numbers between 1 and 20
    putStrLn "\nordered set of numbers, between 1 and 20"
    let b = map Just [1..20]
    printBoard b
    let c = chooseNumbers b [1..4]
    printBoard c
    -- to do: shuffle list
    -- to do: add bool to numbers, using createInitBoard
    -- to do: split into 16:4