module Gaurds where

factorial n
    | n <= 1    = 1
    | otherwise = n * factorial (n - 1)


factorialTail n = aux n 1
 where
   aux n acc
    | n <= 1    = acc
    | otherwise = aux (n - 1) (acc * n)
