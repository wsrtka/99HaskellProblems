data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

completeBinaryTree :: Int -> Tree Char
completeBinaryTree n = builder n 1
                       where builder n a 
                                | 2 * a + 1 <= n = Branch 'x' (builder n (2 * a)) (builder n (2 * a + 1))
                                | 2 * a <= n     = Branch 'x' (builder n (2 * a)) Empty
                                | otherwise      = Branch 'x' Empty Empty