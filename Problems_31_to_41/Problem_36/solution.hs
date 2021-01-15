--solution from problem 9
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs
              in (x : first) : pack rest

--solution from problem 10
encode :: Eq a => [a] -> [(Int, a)]
encode x = let packed = pack x
               f y    = (length y, head y)
           in map f packed

--solution from problem 35
primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = x : primeFactors (n `div` x)
                 where x = head [i | i <- [2..n], n `mod` i == 0]

--solution for problem 36
primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult n = encode $ primeFactors n