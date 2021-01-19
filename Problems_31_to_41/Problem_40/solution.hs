goldbach :: Int -> (Int, Int) 
goldbach a = head [(i, j) | i <- [2..a], j <- [2..a - i], i + j == a, isPrime i, isPrime j]
             where isPrime x = null [d | d <- [2..x `div` 2], x `mod` d == 0]