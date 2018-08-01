data Token = Plus 
           | TnNat Int

data Term = TAdd Int Int
          | TmNat Int

main = do
    let formula = words "1 2 3 + +"
    print formula

-- mexer :: [Char] -> [Int]

-- parser :: [Token] -> Term


-- eval :: Term -> Int
