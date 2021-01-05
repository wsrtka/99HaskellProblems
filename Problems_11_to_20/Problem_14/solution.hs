dupli :: [a] -> [a]
dupli []     = []
dupli xs = concatMap (replicate 2) xs