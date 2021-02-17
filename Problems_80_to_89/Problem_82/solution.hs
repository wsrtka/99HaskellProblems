import Data.List ( partition )

cycle' :: Eq a => a -> [(a,a)] -> [[a]]
cycle' n g = search [[n]] []
             where search [] result = result
                   search cur result = search (go active) (arrive ++ result)
                    where split = partition end cur
                          end s = (last s == n) && (length s /= 1)
                          active = snd split
                          arrive = fst split
                          go ls = [ x ++ [snd y] | x <- ls, y <- g, last x == fst y, not (snd y `elem` tail x)]
                   