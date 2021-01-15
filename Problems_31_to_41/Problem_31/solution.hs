isPrime :: Int -> Bool 
isPrime n = null [i | i <- [2..n-1], n `mod` i == 0] 