--import for more elegant solution
import Data.List

compress :: Eq a => [a] -> [a]
compress (x:y:xs)
    | null xs   = if x == y then [x] else [x, y]
    | otherwise = if x == y then compress (y:xs) else x : compress (y:xs)

--elegant solution
compress' :: Eq a => [a] -> [a]
compress' = map head . group 