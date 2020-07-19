module ListPatternMatching where

sums :: [Int] -> Int
sums []     = 0
sums (x:xs) = x + sums xs

evens :: [Int] -> [Int]
evens [] = []
evens (x:xs)
  | mod x 2 == 0 = x : evens xs
  | otherwise    = evens xs
