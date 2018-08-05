import Data.Char

data Token = Plus 
           | Minas
           | TnNat Int
           deriving (Show, Eq)

data Term = Add Term Term
          | Sub Term Term
          | TmNat Int
           deriving Show 

main = do
    print "1+2-3"
    print $ lexer "1+2-3"
    print $ parser $ lexer "1+2-3"
    print $ eval $ parser $ lexer "1+2-3"

lexer :: String -> [Token]
lexer = map toToken
    where toToken x
            | isDigit x = TnNat $ digitToInt x
            | x == '+' = Plus
            | x == '-' = Minas

parser :: [Token] -> Term
parser tokens = if length tokens > 1 then parse tokens else toTerm $ head tokens
    where parse (n:s:xs)
            | s == Plus = Add (toTerm n) (parser xs)
            | s == Minas = Sub (toTerm n) (parser xs)
          toTerm (TnNat n) = TmNat n

eval :: Term -> Int
eval (Add a b) = eval a + eval b
eval (Sub a b) = eval a - eval b
eval (TmNat n) = n
