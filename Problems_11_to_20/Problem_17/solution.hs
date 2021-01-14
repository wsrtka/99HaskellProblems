--damn, predefined predicates :/
split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)

--this is truly without predefined predicates
split' :: [a] -> Int -> ([a], [a])
split' xs n = helper ([], xs) n 0
              where helper (ys, []) _ _ = (ys, [])
                    helper (ys, z:zs) n count =
                     if count < n 
                     then helper (ys ++ [z], zs) n (count + 1)
                     else (ys, z:zs)
                    