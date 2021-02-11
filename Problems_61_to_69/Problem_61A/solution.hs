data Tree a = Empty | Branch a (Tree a) (Tree a)
                deriving Show

leaves :: Tree a -> [a]
leaves Empty                  = []
leaves (Branch x Empty Empty) = [x]
leaves (Branch _ l r)         = leaves l ++ leaves r