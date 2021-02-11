data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

internals :: Tree a -> [a]
internals Empty                  = []
internals (Branch _ Empty Empty) = []
internals (Branch x l r)         = [x] ++ internals l ++ internals r