import Data.Function
import Data.List

--basically quicksort
lsort :: [[a]] -> [[a]]
lsort []     = []
lsort (x:xs) = lsort (filter (\y -> length y < length x) xs) 
               ++ [x] 
               ++ lsort (filter (\y -> length y >= length x) xs)

--length frequency sort
--for some reason this doesn't seem to work :/
lfsort ::[[a]] -> [[a]]
lfsort []     = []
lfsort (x:xs) = lfsort (filter (\y -> lf y xs <= lf x xs) xs)
                ++ [x]
                ++ lfsort (filter (\y -> lf y xs > lf x xs) xs)

lf :: [a] -> [[a]] -> Int
lf x xs = freq (length x) (map (\y -> length y) xs)

freq :: Eq a => a -> [a] -> Int
freq x xs = length (filter (\y -> y == x) xs)

--proper solution from wiki
lfsort' :: [[a]] -> [[a]]
lfsort' = concat . lsort . groupBy ((==) `on` length) . lsort
