--silly solution
myReverse :: [a] -> [a]
myReverse = reverse

--another solution
myReverse' :: [a] -> [a]
myReverse' [] = []
myReverse' (x:xs) = myReverse' xs ++ [x]