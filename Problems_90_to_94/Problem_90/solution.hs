queens :: Int -> [[Int]]
queens n = filter test (generate n)
            where generate 0 = [[]]
                  generate k = [q:qs | q <- [1..n], qs <- generate (k-1)]

                  test s = horizontalSafe s && diagonalSafe s

                  horizontalSafe [] = True
                  horizontalSafe (x:xs) = x `notElem` xs && horizontalSafe xs

                  diagonalSafe [] = True
                  diagonalSafe (x:xs) = diagonalSafe1 x xs && diagonalSafe2 x xs && diagonalSafe xs
                        where diagonalSafe1 _ [] = True
                              diagonalSafe1 y (z:zs) 
                                    | y + 1 == z = False
                                    | otherwise  = diagonalSafe1 (y+1) zs

                              diagonalSafe2 _ [] = True
                              diagonalSafe2 y (z:zs) 
                                    | y - 1 == z = False
                                    | otherwise  = diagonalSafe2 (y-1) zs