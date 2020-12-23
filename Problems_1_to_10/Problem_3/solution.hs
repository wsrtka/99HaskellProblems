--Solution using indexing
elementAt :: [a] -> Int -> a
elementAt x i = x !! (i - 1)

--Interesting solution from wiki
elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1 = x                              --define edge condition
elementAt' [] _    = error "Index out of bounds"    --if list is empty, error regardless of second argument
elementAt' (_:xs) k
    | k < 1        = error "Index out of bounds"    --error if second argument is negative
    | otherwise    = elementAt' xs (k - 1)          --otherwise is always equal to True, recursive version