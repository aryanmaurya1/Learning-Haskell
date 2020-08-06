module Main where 
-- hackerrank Problem

f :: [Int] -> [Int]
f lst = [lst !! x | x <- filterIndex]
        where
          filterIndex = [x | x <- [0..(length lst - 1)], x `mod` 2 /= 0]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata
