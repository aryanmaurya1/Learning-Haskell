module ListPermutations where

perms [] = [[]]
perms xs = [x:p | x <- xs, p <- perms (removeFirst x xs)]
      where removeFirst x []          = []
            removeFirst x (y:ys) 
                          | x == y    = ys
                          | otherwise = y: removeFirst x ys 
