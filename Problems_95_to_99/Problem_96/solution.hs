-- there is no diagram available so I'll create a function to solve the sentences given in the example
import Data.List

identifier :: String -> Bool 
identifier "" = False
identifier s  = not $ any null $ split s
                where split str = case break (=='-') str of
                                  (a, '-':b) -> a : split b
                                  (a, "")    -> [a]