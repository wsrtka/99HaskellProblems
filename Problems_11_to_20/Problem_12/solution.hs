data ListElement a = Single a | Multiple Int a

decodeModified :: [ListElement a] -> [a]
decodeModified []     = []
decodeModified (x:xs) = case x of
                        Single c     -> c : decodeModified xs
                        Multiple n c -> replicate n c ++ decodeModified xs