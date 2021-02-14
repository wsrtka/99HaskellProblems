data Tree a = Node a [Tree a]
    deriving Show

ipl :: Tree a -> Int 
ipl = ipl' 0
        where ipl' n (Node _ children) = n + sum (map (ipl' (n + 1)) children)