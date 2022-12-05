module Math where

isBoardSolved :: [(Int, Bool)] -> Bool
isBoardSolved [] = True
isBoardSolved (n:board) = isNumSolved n && isBoardSolved board

isNumSolved :: (Int, Bool) -> Bool
isNumSolved num = snd num

data Exp = OperatorType Int Int
    deriving (Eq,Show)

data OperatorType = Add | Sub
    deriving (Eq,Show)




