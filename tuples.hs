module TuplesDemo where

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x+y | (x, y) <- xs ]
