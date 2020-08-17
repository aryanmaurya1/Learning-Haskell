module CycleList where
-- generates cyclic list

cycleList (x:xs) = x : cycleList (xs ++ [x])
