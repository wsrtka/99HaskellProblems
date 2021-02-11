data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

tree2ds :: Tree Char -> String
tree2ds Empty = "."
tree2ds (Branch x l r) = x : tree2ds l ++ tree2ds r


ds2tree :: String -> Tree Char
ds2tree xs = fst $ rebuilder xs
             where rebuilder "" = (Empty, "")
                   rebuilder ('.':ys) = (Empty, ys)
                   rebuilder (x:xs) = (Branch x left right, rest)
                    where (left, toRight) = rebuilder xs
                          (right, rest) = rebuilder toRight