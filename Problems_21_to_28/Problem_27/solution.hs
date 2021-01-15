--modified solution from problem 26
combinations :: Int -> [a] -> [([a], [a])]
combinations 0 xs  = [([], xs)]
combinations n [] = []
combinations n (x:xs) = ts ++ rs
                        where ts = [(x:ys, zs) | (ys, zs) <- combinations (n-1) xs] --we take x to the newly created group
                              rs = [(ys, x:zs) | (ys, zs) <- combinations n xs]     --or we don't

--solution for problem 27
group :: [Int] -> [a] -> [[[a]]]
group [] _  = [[]]
group (n:ns) xs = [g:gs | (g, rs) <- combinations n xs, gs <- group ns rs]
