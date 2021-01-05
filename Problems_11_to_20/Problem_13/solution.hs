data ListElement a = Single a | Multiple Int a
                    deriving(Show)

encodeDirect :: Eq a => [a] -> [ListElement a]
encodeDirect []     = []
encodeDirect (x:xs)
    | count == 1 = Single x : encodeDirect xs
    | otherwise  = Multiple count x : encodeDirect rest
    where
        count = 1 + length matched
        (matched, rest) = span (==x) xs