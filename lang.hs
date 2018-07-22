data Token = Plus 
           | TokenNat Int

data Term = TermAdd Int Int
          | TermNat Int

main = do
    mapM_ print "123++"

-- replace :: Char -> Int 
-- replace "+" = 0
-- replace num = read num :: Int
--
-- lexer :: [Char] -> [Int]
-- lexer [] = []
-- lexer (c:source) = replace c : lexer source

-- parser :: [Token] -> Term


-- eval :: Term -> Int
