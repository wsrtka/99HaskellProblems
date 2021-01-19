primesR :: Int -> Int -> [Int]
primesR a b 
    | a < 2 || b < 2 = []
    | otherwise      = filter sieve [a..b]
                       where sieve x = null [p | p <- [2..x `div` 2], x `mod` p == 0]