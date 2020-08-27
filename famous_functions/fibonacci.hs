module Fibo where
-- classic fibonacci function

fibo 1 = 0
fibo 2 = 1
fibo n = fibo (n - 1) + fibo (n - 2)

