data Tree a = Node a [Tree a]
    deriving Show

nnodes :: Tree a -> Int
nnodes (Node _ children) = foldr (+) 1 (map nnodes children)