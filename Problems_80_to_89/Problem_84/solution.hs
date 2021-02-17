import Data.List
import Data.Array

type Graph n w = Array n [(n,w)]

mkGraph :: Ix i => Bool -> (i, i) -> [(i, i, b)] -> Array i [(i, b)]
mkGraph dir bnds es =
    accumArray (\xs x -> x:xs) [] bnds
               ([(x1,(x2,w)) | (x1,x2,w) <- es] ++
               if dir then []
               else [(x2,(x1,w)) | (x1,x2,w) <- es, x1 /= x2])
               
adjacent :: Ix i => Array i [(b1, b2)] -> i -> [b1]
adjacent g v = map fst (g!v)

nodes :: Ix i => Array i e -> [i]
nodes g = indices g

edgeIn :: (Ix i, Eq a) => Array i [(a, b2)] -> (i, a) -> Bool
edgeIn g (x,y) = elem y (adjacent g x)

weight :: (Ix i, Eq a1) => i -> a1 -> Array i [(a1, a2)] -> a2
weight x y g = head [c | (a,c) <- g!x, a == y]

edgesD :: Ix a => Array a [(b, c)] -> [(a, b, c)]
edgesD g = [(v1,v2,w) | v1 <- nodes g, (v2,w) <- g!v1]

edgesU :: Ix b => Array b [(b, c)] -> [(b, b, c)]
edgesU g = [(v1,v2,w) | v1 <- nodes g, (v2,w) <- g!v1, v1 < v2]

prim :: (Ord c, Ix b) => Array b [(b, c)] -> [(c, b, b)]
prim g = prim' [n] ns []
    where (n:ns) = nodes g
          es = edgesU g
          prim' t [] mst = mst
          prim' t r mst = let e@(c,u',v') = minimum
                                             [(c,u,v) | (u,v,c) <- es, 
                                                         elem u t, 
                                                         elem v r]
                          in  prim' (v':t) (delete v' r) (e:mst)