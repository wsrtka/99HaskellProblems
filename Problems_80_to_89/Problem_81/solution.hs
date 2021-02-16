paths :: Eq a => a -> a -> [(a, a)] -> [[a]]
paths a b es = pathsWorking a b es []
               where pathsWorking a b es current = pathsNeighbours a b es current [n | (x, n) <- es, x == a]
                     pathsNeighbours a b es current []
                        | a == b    = [current ++ [b]]
                        | otherwise = []
                     pathsNeighbours a b es current (n:ns)
                        | a == b           = [current ++ [b]]
                        | a `elem` current = []
                        | otherwise        = (pathsWorking n b es (current ++ [a])) ++ (pathsNeighbours a b es current ns)