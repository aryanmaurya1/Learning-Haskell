module Foldr where
-- foldr function code 

foldr f b [] = b; 
foldr f b (x:xs) =  x `f` (foldr f b xs)
