module IfEven where

ifEven func n = if even n
                then func n
                else n

main = ifEven (\a -> a * a *a) 20
