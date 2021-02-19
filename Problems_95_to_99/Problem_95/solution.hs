import Data.List

numberToList :: Int -> [Int]
numberToList n = let (q, r) = n `quotRem` 10 in
                 if r == 0 && q == 0
                 then []
                 else r : numberToList q

numToWord :: Int -> String
numToWord n = let dict = zip [0..9] ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"] in
              if n > 10
              then fullWords n
              else snd $ head (filter (\x -> fst x == n) dict)
                 
fullWords :: Int -> String 
fullWords 0 = "zero"
fullWords n = intercalate "-" $ map numToWord $ reverse $ numberToList n