import Control.Monad

gray :: Int -> [String]
gray n = code [concat $ replicate n "0"] [concat a | a <- replicateM n ["0", "1"]]
         where code xs [] = xs
               code xs (y:ys) 
                    | y `elem` xs             = code xs ys
                    | dist y (last xs) 0 == 1 = code (xs ++ [y]) ys
                    | otherwise               = code xs (ys ++ [y])

dist :: (Eq a) => [a] -> [a] -> Int -> Int
dist [] _ n = n
dist _ [] n = n
dist (x:xs) (y:ys) n
          | x == y           = dist xs ys n
          | otherwise        = dist xs ys (n+1)