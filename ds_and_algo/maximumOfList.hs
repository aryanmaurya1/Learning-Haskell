module MaximumOfList where

maxLst [x] = x
maxLst (x:y:xs) 
        | x > y     = maxLst (x:xs)
        | otherwise = maxLst (y:xs) 
