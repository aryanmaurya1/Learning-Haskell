module Collatz where
-- Collatz conjecture

collatz ::Int -> Int
collatz 1 = 1
collatz n = if even n 
            then 1 + collatz (n `div` 2)
            else 1 + collatz (n * 3 + 1)

