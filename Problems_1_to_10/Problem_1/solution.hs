--Hey, thats cheating! :D
myLast :: [a] -> a
myLast = last

--Other solution
myLast2 :: [a] -> a
myLast2 x = x !! (length x - 1)