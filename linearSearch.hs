module LinearSearch where

linearSearch :: (Eq a) => a -> [a] -> Bool
linearSearch _ [] = False 
linearSearch e (x:xs) = (e == x) || (linearSearch e xs)
               
