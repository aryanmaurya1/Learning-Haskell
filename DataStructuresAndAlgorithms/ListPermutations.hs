module ListPermutations where

perms [] = [[]]
perms xs = [x:p | x <- xs, p <- perms (removeFirst x xs)]
      where removeFirst x []          = []
            removeFirst x (y:ys) 
                          | x == y    = ys
                          | otherwise = y: removeFirst x ys 

-- The removeFirst x xs removes the first occurrence of x from list xs. Each
-- permutation is constructed by placing each element of the argument list, in turn, at the
-- head of each permutation for the remaining elements. For example, perms [ 1 , 2 , 3]
-- takes 1 from the front of the list [1 , 2 , 3] , finds the permutations of the list [2 , 3]
-- (these will be [2 , 3] and [3 , 2] ) , and adds the 1 to the front of these permutations,
-- producing the lists [ 1 , 2 , 3] and [ 1 , 3 , 2] . The same is done with the second element
-- of the original list, 2, producing the lists [2 , 1 , 3] and [2 , 3 , 1 ] . Finally, we repeat the
-- process with the remaining element of the original list, 3, producing the lists [3 , 1 , 2]
-- and [3 , 2 , 1 ] . The final result returned by the perms function is a list containing all
-- these permutations. 

-- Example of book : Algorithms A Functional Programming Approach
-- By : Fethi Rabhi and Guy Lapalme
