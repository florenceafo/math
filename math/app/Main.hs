module Main where

import Lib
-- import Data.Bool
import System.Random

main :: IO ()
main = do
    -- putStrLn "Enter a number"
    -- input <- getLine -- read user input
    -- putStrLn input
    -- let p = (read input :: Int) -- string to int
    -- let q = printOut p -- call another function 
    -- print q
    -- putStrLn . unwords . map show $ createList
    -- putStrLn . unwords . map show $ map getNumber createInitBoard 
    putStrLn . unwords . map show $ map fst createInitBoard 
    putStrLn . unwords . map show $ map snd createInitBoard 



-- stack build
-- stack exec math-exe


-- printOut :: Int -> Int
-- printOut n = n * 3

-- createList :: [Int]
-- createList = [1..20]

createInitBoard :: [(Int, Bool)]
createInitBoard = zip [1..] $ take 20 (repeat False)

-- -- randomiseList :: [Int] -> [Int]
-- -- randomiseList 
-- -- threeCoins :: StdGen -> (Bool, Bool, Bool)  
-- -- threeCoins gen =   
-- --     let (firstCoin, newGen) = random gen  
-- --         (secondCoin, newGen') = random newGen  
-- --         (thirdCoin, newGen'') = random newGen'  
-- --     in  (firstCoin, secondCoin, thirdCoin)  

-- -- getNumber :: (Int, Bool) -> Int
-- -- getNumber (num, solved) = num

-- printList :: [Int] -> String
-- printList [] = []
-- printList (x:xs) = show x ++ printList xs



