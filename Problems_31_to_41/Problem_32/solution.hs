myGcd :: Int -> Int -> Int
myGcd a b = last [i | i <- [1..min (abs a) (abs b)], a `mod` i == 0, b `mod` i == 0]