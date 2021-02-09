data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

mirror :: Tree Char -> Tree Char -> Bool 
mirror Empty Empty                   = True 
mirror (Branch _ a b) (Branch _ x y) = mirror a y && mirror b x
mirror _ _                           = False

symmetric :: Tree Char ->  Bool 
symmetric Empty          = True
symmetric (Branch _ x y) = mirror x y
