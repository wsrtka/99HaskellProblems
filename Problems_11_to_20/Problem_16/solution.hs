dropEvery :: [a] -> Int -> [a]
dropEvery _ 0 = []
dropEvery [] _ = []
dropEvery xs n = let (ys, zs) = splitAt n xs
                 in if length zs < n
                    then init ys ++ zs
                    else init ys ++ dropEvery zs n