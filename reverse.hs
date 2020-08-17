module Rev where
-- Reverses a list

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]
