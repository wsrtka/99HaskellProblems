data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

-- solution from problem 56

mirror :: Tree Int -> Tree Int -> Bool 
mirror Empty Empty                   = True 
mirror (Branch _ a b) (Branch _ x y) = mirror a y && mirror b x
mirror _ _                           = False

symmetric :: Tree Int ->  Bool 
symmetric Empty          = True
symmetric (Branch _ x y) = mirror x y

-- solution for this problem

construct :: [Int] -> Tree Int 
construct []     = Empty
construct (x:xs) = Branch x left right
                where left  = construct $ filter (< x) xs
                      right = construct $ filter (>= x) xs