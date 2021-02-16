data Graph a = Graph [a] [(a, a)]
               deriving (Show, Eq)
               
data Adjacency a = Adj [(a, [a])]
                   deriving (Show, Eq)

data Friendly a = Edge [(a, a)]
                  deriving (Show, Eq)

graphToAdj :: Eq a => Graph a -> Adjacency a
graphToAdj (Graph vs es) = Adj $ helper vs es
                           where helper [] _ = []
                                 helper (v:vs) es = (v, map snd $ filter (\x -> fst x == v) es) : helper vs es

graphToFriendly :: Graph a -> Friendly a
graphToFriendly (Graph _ es) = Edge es

friendlyToGraph :: Eq a => Friendly a -> Graph a
friendlyToGraph = adjToGraph . friendlyToAdj

friendlyToAdj :: Eq a => Friendly a -> Adjacency a
friendlyToAdj (Edge es) = Adj $ extractAdj es
                          where extractVs [] vs       = vs
                                extractVs (f:fs) vs 
                                    | fst f `elem` vs = if snd f `elem` vs
                                                        then snd f : extractVs fs vs
                                                        else extractVs fs vs
                                    | otherwise       = if snd f `elem` vs
                                                        then fst f : snd f : extractVs fs vs
                                                        else fst f : extractVs fs vs
                                extractEs v fs = map snd $ filter (\x -> fst x == v) fs
                                extractAdj fs = map (\v -> (v, extractEs v fs)) $ extractVs fs []
                                    

adjToGraph :: Adjacency a -> Graph a
adjToGraph (Adj vs) = Graph (map fst vs) $ concatMap extractEdges vs
                      where extractEdges (_, []) = []
                            extractEdges (v, ns) = map (\x -> (v, x)) ns

adjToFriendly :: Adjacency a -> Friendly a
adjToFriendly (Adj vs) = Edge $ concatMap extractEdges vs
                         where extractEdges (_, []) = []
                               extractEdges (v, ns) = map (\x -> (v, x)) ns