import Data.List

and' :: Bool -> Bool -> Bool
and' True True = True 
and' _ _ = False 

or' :: Bool -> Bool -> Bool 
or' False False = False 
or' _ _ = True

nand' :: Bool -> Bool -> Bool 
nand' a b = not $ and' a b

nor' :: Bool -> Bool -> Bool 
nor' a b = not $ or' a b

xor' :: Bool -> Bool -> Bool 
xor' a b = not a == b

impl' :: Bool -> Bool -> Bool 
impl' True False = False 
impl' _ _ = True

equ' :: Bool -> Bool -> Bool 
equ' a b = a == b

table :: (Bool -> Bool -> Bool) -> IO ()
table f = do putStrLn $ concatMap (++ "\n") [show a ++ " " ++ show b ++ " " ++ show (f a b) | a <- [True, False], b <- [True, False]]