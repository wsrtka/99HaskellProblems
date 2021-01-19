-- solution from problem 40
goldbach :: Int -> (Int, Int) 
goldbach a = head [(i, j) | i <- [2..a], j <- [2..a - i], i + j == a, isPrime i, isPrime j]
             where isPrime x = null [d | d <- [2..x `div` 2], x `mod` d == 0]

-- solution for this problem
goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList a b = map goldbach $ filter even [a..b]

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' a b m = filter (\(x, y) -> x > m && y > m) $ goldbachList a b 