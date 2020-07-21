module RemoveDuplicates where

search :: (Eq a) => a -> [a] -> Bool
search _ [] = False
search e (x:xs) = (e == x) || (search e xs)


removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates [] = []
removeDuplicates (x:xs)
                 | x `search` xs = removeDuplicates xs
                 | otherwise           = x : removeDuplicates xs 
