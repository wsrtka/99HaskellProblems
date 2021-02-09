data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

-- solution from problem 55

cbalTree :: Int -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree n = [Branch 'x' left right | i <- [q..q + r], left <- cbalTree i, right <- cbalTree (n - i - 1)]
             where (q, r) = (n - 1) `quotRem` 2

-- solution from problem 56

mirror :: Tree Char -> Tree Char -> Bool 
mirror Empty Empty                   = True 
mirror (Branch _ a b) (Branch _ x y) = mirror a y && mirror b x
mirror _ _                           = False

symmetric :: Tree Char ->  Bool 
symmetric Empty          = True
symmetric (Branch _ x y) = mirror x y

-- solution for this problem

symCbalTrees :: Int -> [Tree Char]
symCbalTrees n = filter symmetric $ cbalTree n