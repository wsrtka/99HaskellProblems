data Tree a = Node a [Tree a]
    deriving Show

bottomUp :: Tree Char -> String 
bottomUp (Node x children) = (concatMap bottomUp children) ++ [x]