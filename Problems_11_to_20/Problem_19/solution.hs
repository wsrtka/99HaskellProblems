rotate :: [a] -> Int -> [a]
rotate xs n
    | n < 0 = zs ++ ys
    | otherwise = right ++ left
        where (ys, zs) = splitAt (length xs + n) xs
              (left, right) = splitAt n xs