module BTree where
-- Contains definition of Binary Tree

data BinTree a =  Empty
                | NodeBT a (BinTree a) (BinTree a)
                deriving Show

tree = NodeBT 5 (NodeBT 8 (NodeBT 3 Empty Empty) (NodeBT 1 Empty Empty)) (NodeBT 6 Empty (NodeBT 4 Empty Empty))
