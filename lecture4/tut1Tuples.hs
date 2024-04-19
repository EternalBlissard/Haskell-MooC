module Tuples where
-- Tuples are a way to store multiple values in a single value.
-- They are used when you want to store a collection of values that aren't necessarily related to each other.
-- Tuples are denoted by parentheses and the values they contain are separated by commas.
-- Tuples can contain a combination of values of different types.
-- Tuples can contain lists, other tuples, and even functions.
-- Tuples are used when you know exactly how many values you want to combine and its type depends on how many components it has and the types of the components.

-- fst :: (a, b) -> a
-- snd :: (a, b) -> b


-- zip :: [a] -> [b] -> [(a, b)]    -- two lists to list of pairs
-- unzip :: [(a, b)] -> ([a], [b])  -- list of pairs to pair of lists
-- partition :: (a -> Bool) -> [a] -> ([a], [a])    -- elements that satisfy and don't satisfy a predicate
-- splitAt :: Int -> [a] -> ([a], [a])    -- split a list at a given index
-- break :: (a -> Bool) -> [a] -> ([a], [a])    -- split a list at the first element that satisfies a predicate
-- span :: (a -> Bool) -> [a] -> ([a], [a])    -- split a list when the first element that satisfies a predicate is found
-- group :: Eq a => [a] -> [[a]]    -- group equal elements into sublists

-- sum all numbers that are paired with True
sumIf :: [(Bool,Int)] -> Int
sumIf [] = 0
sumIf ((True,x):xs) = x + sumIf xs
sumIf ((False,_):xs) = sumIf xs

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)
main = do
    print(zip [1,2,3] [True,False,True])
    print(unzip [(1,True),(2,False),(3,True)])
    -- print(partition (>0) [-1,1,-4,3,2,0])
    print(swap(1,2))
    print(sumIf [(True,1),(False,2),(True,3)])
