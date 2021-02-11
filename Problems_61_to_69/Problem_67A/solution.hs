import Text.Parsec.String
import Text.Parsec hiding (Empty)

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving Show

pTree :: Parser (Tree Char)
pTree = do pBranch <|> pEmpty -- tree can either be empty or a branch, we have to handle two cases

pBranch = do
    a <- letter
    -- the below part is optional - it can handle a lone letter
    do char '('
       l <- pTree
       char ','
       r <- pTree
       char ')'
       return (Branch a l r) <|> return (Branch a Empty Empty)

pEmpty = return Empty -- nothing special here

stringToTree :: String -> Tree Char
stringToTree str = case parse pTree "" str of
                        Right t -> t
                        Left e  -> error (show e)

treeToString :: Tree Char -> String
treeToString Empty                  = ""
treeToString (Branch x Empty Empty) = [x]
treeToString (Branch x l r)         = [x] ++ "(" ++ treeToString l ++ "," ++ treeToString r ++ ")"