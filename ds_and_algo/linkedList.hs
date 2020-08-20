module LinkedList where
-- contains implementation of a linked list

data LinkedList a = Empty 
                    | Node a (LinkedList a)
                    deriving Show


listLength :: Num a => LinkedList a -> Int
listLength Empty = 0
listLength (Node _ nextNode) = 1 + listLength nextNode

l = Node 1 (Node 2 (Node 3 Empty))