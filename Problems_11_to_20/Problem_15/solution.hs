--kind of cheating
repli :: [a] -> Int -> [a]
repli [] _ = []
repli xs n = concatMap (replicate n) xs

--without using built-in functions
getCopies :: a -> Int -> [a]
getCopies _ 0 = []
getCopies x n = x : getCopies x (n-1)

repli' :: [a] -> Int -> [a]
repli' [] _ = []
repli' xs n = concatMap (`getCopies` n) xs