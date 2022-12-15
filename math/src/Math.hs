module Math where



data Exp 
    = Num Int
    | Operator OperatorType Exp Exp 
    deriving (Eq,Show)

data OperatorType = Add | Sub
    deriving (Eq,Show)

num :: Int -> Exp
num n = Num n 

add, sub :: Exp -> Exp -> Exp
add e1 e2 = Operator Add e1 e2
sub e1 e2 = Operator Sub e1 e2 

-- converts an expression to a string
printExp :: Exp -> String
printExp (Num n) = show n 
printExp (Operator t e1 e2) = case t of
    Add -> printExp e1 ++ "+" ++ printExp e2
    Sub -> printExp e1 ++ "-" ++ printExp e2

-- converts a string to an expression


-- evaluates an expression
evalExp :: Exp -> Int
evalExp (Num n) = n
evalExp (Operator t e1 e2) = case t of
    Add -> evalExp e1 + evalExp e2
    Sub -> evalExp e1 - evalExp e2

-- checks if the input is a valid expression



