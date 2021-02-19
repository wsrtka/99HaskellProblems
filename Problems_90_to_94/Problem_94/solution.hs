newtype Adjacency a = Adj [(a, [a])]
    deriving Show

regular :: Int -> Int -> Adjacency Int
regular 