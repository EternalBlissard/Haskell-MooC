module Folder where
-- Folders are a way to store multiple values in a single value.
-- They are used when you want to store a collection of values that aren't necessarily related to each other.
-- Folders are denoted by parentheses and the values they contain are separated by commas.
-- Folders can contain a combination of values of different types.
-- Folders can contain lists, other folders, and even functions.

-- sumNumbers :: [Int] -> Int
-- sumNumbers [] = 0
-- sumNumbers (x:xs) = x + sumNumbers xs

--  one common characteristic with maximumNo. They take a list and produce a value that depends on the values of the elements in the given list. They “crunch” or fold a list of many values into a single value.

-- -- For any other list x : xs, foldr applies f to x and the result of foldr f y xs
-- foldr :: (a -> b -> b) -> b -> [a] -> b
-- foldr f y []     = y
-- foldr f y (x:xs) = f x (foldr f y xs)

-- -- foldr calls its argument function f repeatedly with two arguments
-- -- The first argument is the current element from the list.
-- -- The second argument is what f returned for the rest of the list.

-- sumNumbers implemented using foldr
sumNumbers xs = foldr (+) 0 xs

-- map g xs = foldr helper [] xs
--   where helper y ys = g y : ys

-- foldr helper [] [x1,x2,..,xn] 

-- Lesson to take away is that folding is a particular, yet quite general, way to apply some transformation recursively into some structure (e.g. a list).

main = do
    print(foldr (+) 0 [1,2,3])
    print(sumNumbers [1,2,3])

