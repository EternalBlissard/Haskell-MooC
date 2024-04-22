module RecursiveTypes where
-- Recursive Types
-- A recursive type is a type that includes values that refer to other values of the same type.
-- Recursive types are useful for defining data structures that contain references to other elements of the same type.

data IntList = Empty | Node Int IntList
  deriving Show

ihead :: IntList -> Int
ihead (Node i _) = i

itail :: IntList -> IntList
itail (Node _ t) = t

ilength :: IntList -> Int
ilength Empty = 0
ilength (Node _ t) = 1 + ilength t

-- To be able to put any type of element in our list, let’s do the same thing with a type parameter. This is the same as the built in type [a], but with slightly clunkier syntax:

data List' a = Empty' | Node' a (List' a)
  deriving Show

lhead :: List' a -> a
lhead (Node' h _) = h

ltail :: List' a -> List' a
ltail (Node' _ t) = t

lnull :: List' a -> Bool
lnull Empty' = True
lnull _     = False

llength :: List' a -> Int
llength Empty' = 0
llength (Node' _ t) = 1 + llength t


-- defining my own version of a binary tree in haskell
data Tree a = Leaf a | Node'' a (Tree a) (Tree a)
  deriving Show

-- The Tree type is a recursive type because the Node constructor refers to other Tree values. This allows us to build up complex tree structures.

treeHeight :: Tree a -> Int
treeHeight (Leaf _) = 1
treeHeight (Node'' _ l r) = 1 + max (treeHeight l) (treeHeight r)


-- BST

-- lookup :: Int -> Tree Int -> Bool
-- lookup x Empty = False
-- lookup x (Node y l r)
--   | x < y = lookup x l
--   | x > y = lookup x r
--   | otherwise = True

-- insert :: Int -> Tree Int -> Tree Int
-- insert x Empty = Node x Empty Empty
-- insert x (Node y l r)
--   | x < y = Node y (insert x l) r
--   | x > y = Node y l (insert x r)
--   | otherwise = Node y l r

main = do
    print(ihead (Node 3 (Node 5 (Node 4 Empty))))
    print(itail (Node 3 (Node 5 (Node 4 Empty))))
    print(ilength (Node 3 (Node 5 (Node 4 Empty))))
    print(lhead (Node' 3 (Node' 5 (Node' 4 Empty'))))
    print(ltail (Node' 3 (Node' 5 (Node' 4 Empty'))))
    print(lnull Empty')
    print(lnull (Node' 3 (Node' 5 (Node' 4 Empty'))))
    print(llength (Node' 3 (Node' 5 (Node' 4 Empty'))))
    print(llength Empty')
    -- MyTree:: Tree Int
    -- let Tree MyTree=(Node'' 0 (Node'' 1 (Leaf 2)
    --                       (Leaf 3))
    --               (Leaf 4))
    -- print(MyTree)
    let leafNode = Leaf 5

    -- Create a node with value 1, left child as leafNode, and right child as another node
    let rightNode = Node'' 3 (Leaf 4) (Leaf 6)
    let tree = Node'' 1 leafNode rightNode

    -- Print the tree using the Show instance
    putStrLn ("Created tree: " ++ show tree)
    print(treeHeight tree)

