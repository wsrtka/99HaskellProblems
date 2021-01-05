--solution from problem 9
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs
              in (x : first) : pack rest

--solution from problem 10
encode :: Eq a => [a] -> [(Int, a)]
encode x = let packed = pack x
               f y    = (length y, head y)
           in map f packed

--solution for this problem
data ListElement a = Single a | Multiple Int a
                     deriving(Show)

encodeModified :: Eq a => [a] -> [ListElement a]
encodeModified xx = let packed = pack xx
                        f x    = if length x == 1 
                                 then Single (head x)
                                 else Multiple (length x) (head x)
                   in map f packed