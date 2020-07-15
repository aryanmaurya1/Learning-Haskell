module SquareSumOrSumSquare where 

squareSumOrSumSquare x y = (\squareSum sumSquare -> 
                                if squareSum > sumSquare 
                                then squareSum
                                else sumSquare) (x^2 + y^2) ((x+y)^2)
                             
