module Main where

import Lib
import Data.Bool
import System.Random


main :: IO ()
main = do
    -- putStrLn "Enter a number"
    -- input <- getLine -- read user input
    -- putStrLn input
    -- let p = (read input :: Int) -- string to int
    -- let q = printOut p -- call another function 
    -- print q

    i <- drawInt 1 20 -- Get value out of a promise using `<-` in do block
    print i
    putStrLn . unwords . map show $ map fst createInitBoard 
    putStrLn . unwords . map show $ map snd createInitBoard 

drawInt :: Int -> Int -> IO Int
drawInt x y = getStdRandom (randomR (x,y))

createInitBoard :: [(Integer, Bool)]
createInitBoard = zip [1..] $ take 20 (repeat False)
