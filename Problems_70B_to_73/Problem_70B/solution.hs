data Tree a = Node a [Tree a]
    deriving Show

isMultiwayTree :: Tree a -> Bool 
isMultiwayTree (Node _ children) = length children > 2 || any isMultiwayTree children