removeAt :: Int -> [a] -> (Maybe a, [a])
removeAt n xs 
    | n < 1         = (Nothing, xs)
    | n < length xs = (Nothing, xs)
    | n == 1        = (Just $ head xs, tail xs)
    | otherwise     = (Just $ last ys, init ys ++ zs)
                      where (ys, zs) = splitAt n xs