module Summary where
-- Types are defined like this
-- data TypeName = ConstructorName FieldType FieldType2 | AnotherConstructor FieldType3 | OneMoreCons
-- data TypeName variable = Cons1 variable Type1 | Cons2 Type2 variable

-- examples
-- foo (ConstructorName a b) = a+b
-- foo (AnotherConstructor _) = 0
-- foo OneMoreCons = 7

-- record syntax 
-- data TypeName = Constructor { field1 :: Field1Type, field2 :: Field2Type }

-- Other than data. The newtype keyword works like data, but you can only have a single constructor with a single field. It’s sometimes wise to use newtype for performance resons, but we’ll get back to those in part 2.

-- The type keyword introduces a type alias. Type aliases don’t affect type checking, they just offer a shorthand for writing types. For example the familiar String type is an alias for [Char]:

-- insert :: Int -> Tree Int -> Tree Int
-- insert x Empty = Node x Empty Empty
-- insert x (Node y l r)
--   | x < y = Node y (insert x l) r
--   | x > y = Node y l (insert x r)
--   | otherwise = Node y l r

main = do
    let x = [1,2,3,4]
    let y = drop 2 x
    let z = 5:y
    print(y)