data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

-- don't really understand the question, the picture attached to this problem is not available

type Pos = (Int, Int)

layout :: Tree a -> Tree (a, Pos)
layout t = fst (layoutAux 1 1 t)
  where layoutAux x y Empty = (Empty, x)
        layoutAux x y (Branch a l r) = (Branch (a, (x',y)) l' r', x'')
          where (l', x')  = layoutAux x (y+1) l
                (r', x'') = layoutAux (x'+1) (y+1) r
