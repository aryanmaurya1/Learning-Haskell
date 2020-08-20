module Ackermann where
-- Ackermann function

ackermann :: Int -> Int -> Int
ackermann m 0 = ackermann (m - 1) 1
ackermann 0 n = n + 1
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))
