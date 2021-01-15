--solution from problem 32
myGcd :: Int -> Int -> Int
myGcd a b = last [i | i <- [1..min (abs a) (abs b)], a `mod` i == 0, b `mod` i == 0]

--solution from problem 33
coprime :: Int -> Int -> Bool 
coprime a b = myGcd a b == 1

--solution for problem 34
totient :: Int -> Int 
totient n = length [i | i <- [1..n], coprime i n]