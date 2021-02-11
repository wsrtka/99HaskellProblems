import Data.List
import Data.Maybe

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

-- ad A

preorder :: Tree Char -> String 
preorder Empty = ""
preorder (Branch x l r) = x : preorder l ++ preorder r

inorder :: Tree Char -> String 
inorder Empty = ""
inorder (Branch x l r) = inorder l ++ x : inorder r

-- ad B

preorderToTree :: String -> Tree Char
preorderToTree ""     = Empty
preorderToTree (x:xs) = Branch x (preorderToTree xs) Empty

-- ad C

preInTree :: String -> String -> Tree Char 
preInTree "" "" = Empty
preInTree (x:xs) ys = Branch x (preInTree preLeft inLeft) (preInTree preRight inRight)
                      where (inLeft, _:inRight) = break (==x) ys
                            (preLeft, preRight) = splitAt (length inLeft) xs