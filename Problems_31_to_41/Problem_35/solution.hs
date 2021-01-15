primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = x : primeFactors (n `div` x)
                 where x = head [i | i <- [2..n], n `mod` i == 0]