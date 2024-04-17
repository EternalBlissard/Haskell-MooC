module PartialApp where
-- Partial application is the process of fixing a number of arguments to a function, producing another function of smaller arity
-- This is useful when we want to pass a function as an argument to another function
-- We can partially apply the function to fix some arguments and pass it to the other function

between :: Integer -> Integer -> Integer -> Bool
between lo high x = x < high && x > lo

-- How it works:  Integer -> Integer -> Integer -> Bool, it means Integer -> (Integer -> (Integer -> Bool))
-- Representing multi-argument functions like this is called currying (after the logician Haskell Curry). Currying is what makes partial application possible.
-- Prelude> :t between
-- between :: Integer -> Integer -> Integer -> Bool
-- Prelude> :t between 1
-- between 1 :: Integer -> Integer -> Bool
-- Prelude> :t between 1 2
-- between 1 2 :: Integer -> Bool
-- Prelude> :t between 1 2 3
-- between 1 2 3 :: Bool


main = do 
    -- Partial application of the function between
    print (map (+3) [1,2,3,4,5])
    print (filter (between 3 6) [1,2,3,4,5,6,7,8,9])
    print (map (drop 1) ["Hello","World!"])
    print (map (*2) [1,2,3])