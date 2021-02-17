data Graph a = Graph [a] [(a,a)]
    deriving Show 

data Adjacency a = Adj [(a, [a])]
    deriving Show

graphToAdj :: Eq a => Graph a -> Adjacency a
graphToAdj (Graph vs es) = Adj $ helper vs es
                           where helper [] _ = []
                                 helper (v:vs) es = (v, [x | (x, b) <- es, b == v] ++ [x | (a, x) <- es, a == v]) : helper vs es

depthFirst :: Eq a => Graph a -> a -> [a]
depthFirst g@(Graph vs es) v = depthFirst' adj v [] 
                             where (Adj adj) = graphToAdj g
                                   neighbours ad v vis = [x | (n, ns) <- ad, n == v, x <- ns, x `notElem` vis]
                                   
                                   helper ad [] vis = []
                                   helper ad (n:ns) vis = depthFirst' ad n vis ++ helper ad ns (vis ++ depthFirst' ad n vis)
                                   
                                   depthFirst' ad v vis
                                        | v `elem` vis               = []
                                        | null $ neighbours ad v vis = []
                                        | otherwise                  = v : helper ad (neighbours ad v vis) (v:vis)

connectedComponents :: Eq a => Graph a -> [[a]]
connectedComponents g@(Graph vs es) = reachable vs g
                                      where reachable [] g = []
                                            reachable vs g = component : reachable (filter (\x -> x `notElem` component) vs) g
                                             where component = depthFirst g (head vs)