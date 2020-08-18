module BTree where
-- Contains definition of Binary Tree

data BinTree a =  Empty
                | NodeBT a (BinTree a) (BinTree a)
                deriving Show

tree = NodeBT 5 (NodeBT 8 (NodeBT 3 Empty Empty) (NodeBT 1 Empty Empty)) (NodeBT 6 Empty (NodeBT 4 Empty Empty))

depth :: BinTree a -> Int
depth Empty = 0;
depth (NodeBT _ left right) = 1 + max (depth left) (depth right)

countEmpty :: BinTree a -> Int
countEmpty Empty = 1
countEmpty (NodeBT _ left right) = countEmpty left + countEmpty right

treeSum :: BinTree Integer -> Integer
treeSum Empty = 0
treeSum (NodeBT a left right) = a + treeSum left + treeSum right
