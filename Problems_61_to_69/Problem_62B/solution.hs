data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

atLevel :: Tree a -> Int -> [a]
atLevel _ 0 = []
atLevel (Branch x _ _) 1 = [x]
atLevel (Branch _ l r) n = atLevel l (n-1) ++ atLevel r (n-1)