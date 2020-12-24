--solution from problem 9
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs
              in (x : first) : pack rest

--solution for this problem
encode :: Eq a => [a] -> [(Int, a)]
encode x = let packed = pack x
               f y    = (length y, head y)
           in map f packed