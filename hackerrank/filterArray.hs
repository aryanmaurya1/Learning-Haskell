module Main where
-- hackerrank problem
main = interact $ unlines . map show . f . map read . lines

f :: [Int] -> [Int]
f (n:xs) = filter (<n) xs
