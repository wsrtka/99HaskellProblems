--another silly solution
myLength :: [a] -> Int 
myLength = length

--solution using recursion
myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = 1 + myLength' xs

--solution using accumulator
myLength'' :: [a] -> Int -> Int
myLength'' [] acc = acc
myLength'' (_:xs) acc = myLength'' xs (acc + 1)