module GeneratingList where

-- asc : generates list, last element of range excluded.
asc :: Int -> Int -> [Int]
asc n m
 | m <= n   = []
 | m > n   = n : asc(n + 1) m
