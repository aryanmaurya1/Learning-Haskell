module Main where
-- Hackerrank Problem
f' e n 
    | n == 0 = []
    | otherwise = e : f' e (n-1)

f :: Int -> [Int] -> [Int]
f n arr = concat ([f' x n | x <- arr])

main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
