import Data.List
import Data.Ord (comparing)

data HuffTree a = Leaf a | Branch (HuffTree a) (HuffTree a)
                deriving Show

huffman :: (Ord c, Ord f, Num f) => [(c, f)] -> [(c, [Char])]
huffman freq = sortBy (comparing fst) $ serialize $ htree $ sortBy (comparing fst) $ [(w, Leaf x) | (x, w) <- freq]
                    where htree [(_, t)] = t
                          htree ((w1, t1):(w2, t2):wts) = htree $ insertBy (comparing fst) (w1 + w2, Branch t1 t2) wts
                          serialize (Branch l r) = [(x, '0':code) | (x, code) <- serialize l]
                                                   ++ [(x, '1':code) | (x, code) <- serialize r]
                          serialize (Leaf x)     = [(x, "")]