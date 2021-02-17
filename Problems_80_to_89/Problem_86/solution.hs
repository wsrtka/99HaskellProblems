data Graph a = Graph [a] [(a,a)]
    deriving (Show, Eq)

degree :: Eq a => Graph a -> a -> Int
degree (Graph vs es) v 
    | v `notElem` vs = -1
    | otherwise      = length (filter (\e -> fst e == v || snd e == v) es)

degreeSort :: Eq a => Graph a -> [a]
degreeSort g@(Graph vs es) = map snd $ sort $ map (\x -> (degree g x, x)) vs
                             where sort (x:xs) = filter (\y -> fst y >= fst x) xs
                                                 ++ [x]
                                                 ++ filter (\y -> fst y < fst x) xs

kColor :: Eq a => Graph a -> [(a, Int)]
kColor g@(Graph vs es) = helper (degreeSort g) es 1
                         where color cs [] es c = cs
                               color cs (v:vs) es c
                                    | v `elem` neighbours cs es = color cs vs es c
                                    | otherwise                 =  color (cs ++ [(v, c)]) vs es c

                               neighbours vs es = concatMap (\v -> [n | (a, n) <- es, a == v] ++ [n | (n, b) <- es, b == v]) $ map fst vs

                               helper [] es c = []
                               helper vs es c = colored 
                                                       ++ (helper (filter (\x -> x `notElem` coloredVs) vs) es (c+1))
                                                       where colored = color [] vs es c
                                                             coloredVs = map fst colored