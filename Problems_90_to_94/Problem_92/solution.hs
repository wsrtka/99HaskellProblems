import Data.List 
import Data.Array
import Control.Monad

vonKoch edges = do
    let n = length edges + 1
    nodes <- permutations [1..n]
    let nodeArray = listArray (1,n) nodes
    let dists = sort $ map (\(x,y) -> abs (nodeArray ! x - nodeArray ! y)) edges
    guard $ and $ zipWith (/=) dists (tail dists)
    return nodes