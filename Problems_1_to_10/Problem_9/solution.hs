pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs --span resturns the longest prefix satysfying the given confition and the rest of the list
              in (x : first) : pack rest