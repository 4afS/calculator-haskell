import Data.Char

data Token = Plus 
           | Sub
           | Multiply
           deriving Show 

data Term = Add Int Int
          | TmNat Int

main = do
    print $ lexer "1+2+3"

lexer :: [Char] -> [Token]
lexer xs = map toToken xs
    where toToken x
            | isDigit x = TnNat $ digitToInt x
            | x == '+' = Plus
            | x == '-' = Sub
            | x == '*' = Multiply

parser :: [Token] -> Term
parser = undefined

eval :: Term -> Int
eval = undefined
