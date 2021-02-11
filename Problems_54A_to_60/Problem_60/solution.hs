import Data.List
import Data.Maybe

data Tree a = Empty | Branch a (Tree a) (Tree a)
            deriving Show

-- solution from problem 59

hbalTree :: a -> Int -> [Tree a]
hbalTree x 0 = [Empty]
hbalTree x 1 = [Branch x Empty Empty]
hbalTree x h = [Branch x l r |
        (hl, hr) <- [(h-2, h-1), (h-1, h-1), (h-1, h-2)],
        l <- hbalTree x hl, r <- hbalTree x hr]

maxNodes :: Int -> Int 
maxNodes h = 2^(h+1) - 1

-- according to https://www.cs.cornell.edu/courses/JavaAndDS/files/tree3binaryTreeHeight.pdf
minNodes :: Int -> Int
minNodes h = 2 ^ (h - 1) 

hbalTreeNodes :: a -> Int -> [Tree a]
hbalTreeNodes _ 0 = [Empty]
hbalTreeNodes x n = filter (\t -> countNodes t == n) $ concatMap (hbalTree x) [minHeight..maxHeight]
                    where countNodes Empty = 0
                          countNodes (Branch _ l r) = countNodes l + countNodes r + 1
                          minHeight = 1 + fromJust (findIndex (>n) $ map maxNodes [1..])
                          maxHeight = 1 + fromJust (findIndex (>n) $ map minNodes [1..])
                          