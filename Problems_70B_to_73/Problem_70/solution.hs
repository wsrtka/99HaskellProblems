import Data.List ( intersperse )

data Tree a = Node a [Tree a]
    deriving Show

treeToString :: Tree Char -> String
treeToString (Node x ts) = [x] ++ (concat $ intersperse "^" (map treeToString ts)) ++ "^"

stringToTree :: String -> Tree Char
stringToTree (x:'^':"") = Node x []
stringToTree (x:xs)     = Node x children
                          where z = map fst $ filter ((==) 0 . snd) $ zip [0..] $ 
                                    scanl (+) 0 $ map (\x -> if x == '^' then -1 else 1) xs
                                children = map (stringToTree . uncurry (sub xs)) $ zip (init z) (tail z)
                                sub s a b = take (b - a) $ drop a s