module Main where
-- hackerrank problem

fn n = take n [1..]

main = do
n <- readLn :: IO Int
print (fn(n))
