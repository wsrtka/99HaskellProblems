slice :: [a] -> Int -> Int -> [a]
slice xs i k 
    | i > 0 = zs
              where (_, ys) = splitAt (i - 1) xs
                    (zs, _) = splitAt (k - i + 1) ys