-- solution from problem 46
import Data.List

table :: (Bool -> Bool -> Bool) -> IO ()
table f = do putStrLn $ concatMap (++ "\n") [show a ++ " " ++ show b ++ " " ++ show (f a b) | a <- [True, False], b <- [True, False]]

-- solution for this problem
and' :: Bool -> Bool -> Bool 
True `and'` True = True 
_    `and'` _    = False

or' :: Bool -> Bool -> Bool 
False `or'` False = False 
_     `or'` _     = False

infix 2 `and'`
infix 1 `or'`
