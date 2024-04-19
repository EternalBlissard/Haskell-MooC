module StandardTypes where
-- -- The Eq type class is for types that support equality testing. The functions its members implement are == and /=.
-- nub  function from Eq class can generate a list without duplicates

-- The Ord class is for Ordering. Values EQ(Equal to), LT(Less Than) and GT(Greater Than)
-- compare :: Ord a => a -> a -> Ordering
-- (<) :: Ord a => a -> a -> Bool
-- (>) :: Ord a => a -> a -> Bool
-- (>=) :: Ord a => a -> a -> Bool
-- (<=) :: Ord a => a -> a -> Bool
-- max :: x y = compare (f x) (f y)

-- from the module Data.List
-- sorts a list using the given comparison function
-- sortBy :: (a -> a -> Ordering) -> [a] -> [a]Ord a => a -> a -> a
-- -- min :: Ord a => a -> a -> a
-- -- sort::The function sort from Data.List works on all types that belong to the Ord class.
-- -- from the module Data.Ord
-- -- compares two values "through" the function f
-- comparing :: (Ord a) => (b -> a) -> b -> b -> Ordering
-- comparing f 

-- sortByLength :: [[a]] -> [[a]]
-- sortByLength = sortBy (comparing length)

-- Num is a numeric type class. Its members have the property of being able to act like numbers.
-- Num class consists of integer arithmetic and fractional numbers.
-- (+) :: Num a => a -> a -> a
-- (-) :: Num a => a -> a -> a
-- (*) :: Num a => a -> a -> a
-- negate :: Num a => a -> a    -- 0-x
-- abs :: Num a => a -> a       -- absolute value
-- signum :: Num a => a -> a    -- -1 for negative values, 0 for 0, +1 for positive values
-- fromInteger :: Num a => Integer -> a
-- Integral is the class of types that represent whole numbers, like Int and Integer
-- The most interesting functions are div and mod for integer division and remainder. All types that belong to Integral also belong to Num.
-- Fractional is the class for types that have division. All types that belong to Fractional also belong to Num.
-- Floating contains some additional operations that only make sense for floating point numbers. All types that belong to Floating also belong to Fractional.

-- Show and Read
-- We need to use a type annotation with read so that the compiler can choose the right implementation.

-- Foldables
-- length isn’t [a] -> Int but something more general
-- length :: Foldable t => t a -> Int
-- What Foldable represents is types that you can fold over. The true type of foldr is:
-- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
-- lists are Foldable since we’ve managed to use length and foldr on lists.
-- Maybe is also Foldable! The Foldable instance for Maybe just pretends that values of Maybe a are like lists of length 0 or 1

main = do
    print(compare 1 1)
    print(compare 1 3)
    print(compare 1 0)
    print(min 5 3)
    print("aardvark" < "banana")
    -- print(sortByLength [[1,2,3],[4,5],[4,5,6,7]])
    print(1 :: Int)
    print(fromIntegral 1 :: Double)
    print(show 2.3)
    print(foldr (+) 1 Nothing )
    print(foldr (+) 1 (Just 3))