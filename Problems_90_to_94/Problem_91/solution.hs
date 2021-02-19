type Square = (Int, Int)

onBoard :: Int -> Square -> Bool 
onBoard n (x, y) = (x >= 0) && (x < n) && (y >= 0) && (y < n)

knightMoves :: Int -> Square -> [Square]
knightMoves n (x, y) = filter (onBoard n) [(x+1, y+2), (x+1, y-2), (x+2, y+1), (x+2, y-1), (x-1, y+2), (x-1, y-2), (x-2, y+1), (x-2, y-1)]

knightsTo :: Int -> Square -> [[Square]]
knightsTo n (x, y) = [pos:path | (pos, path) <- tour (n^2)]
                     where tour 1 = [((x, y), [])]
                           tour k = [(cur, pos:path) | (pos, path) <- tour (k-1), cur <- (filter (`notElem` path) (knightMoves n pos))]

closedKnights :: Int -> [[Square]]
closedKnights n = [pos:path | (pos, path) <- tour (n^2), pos == start]
                     where tour 1 = [(finish, [])]
                           tour k = [(cur, pos:path) | (pos, path) <- tour (k-1), cur <- (filter (`notElem` path) (knightMoves n pos))]
                           start = (1,1)
                           finish = (2,3)