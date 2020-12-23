--Solution using indexing
myButLast :: [a] -> a
myButLast x = x !! (length x - 2)

--Solution using array functions
myButLast2 :: [a] -> a
myButLast2 x = last (init x)