module Tut1Intro where
-- Just like ints and lists, even functions can be passed as arguments to other functions
-- Functions that take other functions as arguments are called higher order functions
-- Important Higher Order Functions are map, filter, foldl, foldr
-- map applies a function to each element of a list (map :: (a -> b) -> [a] -> [b])
-- filter: filters a list based on a predicate (filter :: (a -> Bool) -> [a] -> [a])
-- Important to note that functions are first class citizens in Haskell
-- Functions that are passed as arguments are called first class functions
-- Functions that return functions are called higher order functions
-- Functions that are returned are called first class functions

applyTo1 :: (Int -> Int) -> Int
applyTo1 f = f 1

addThree :: Int -> Int
addThree x = x + 3

mulTwo :: Int -> Int
mulTwo x = x * 2

checkEven :: Int -> Bool
checkEven x = x `mod` 2 == 0

twiceDoer :: (a -> a) -> a -> a
twiceDoer f x = f (f x)

wrapJust xs = map Just xs

styLer :: String -> String
styLer str = "--" ++ str ++ "--"

-- a predicate that checks if a string is a palindrome
palindrome :: String -> Bool
palindrome str = str == reverse str

-- palindromes n takes all numbers from 1 to n, converts them to strings using show, and keeps only palindromes
palindromes :: Int -> [String]
palindromes n = filter palindrome (map show [1..n])

-- countAWords takes a string and returns the number of words that start with 'a'
countAWords :: String -> Int
countAWords string = length (filter startsWithA (words string))
  where startsWithA s = head s == 'a'

tails :: [a] -> [[a]]
tails [] = [[]]
tails xs = xs : tails (tail xs)

-- substringsOfLength n takes a string and returns all substrings of length n
substringsOfLength :: Int -> String -> [String]
substringsOfLength n string = map shorten (tails string)
  where shorten s = take n s


-- The main function
main = do
    -- The function addThree is passed as an argument to applyTo1
    print (applyTo1 addThree)
    -- The function mulTwo is passed as an argument to applyTo1
    print (applyTo1 mulTwo)
    -- The function addThree is passed as an argument to twiceDoer
    print (twiceDoer addThree 2)
    -- The function tail is passed as an argument to twiceDoer
    print (twiceDoer tail "--LuvAll--")
    -- The function styLer is passed as an argument to twiceDoer
    print (twiceDoer styLer "LuvAll")
    -- The function add 3 is passed as an argument to map
    print (map addThree [1,2,3,4,5])
    -- The function checkEven is passed as an argument to filter
    print (filter checkEven [1,2,3,4,5])
    print(wrapJust [1,2,3])
    -- countAWords is passed as an argument to filter
    print(countAWords "apple and orange are fruits")
    -- palindromes is passed as an argument to print
    print(palindromes 100)
    print(substringsOfLength 3 "hello")