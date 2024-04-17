module PlayingWithOperators where
-- Operators are functions that can be used in infix notation
-- . and $ are two operators that are used to compose functions
-- Often function composition is not used when defining a new function, but instead to avoid defining a helper function.
-- . is the function composition operator
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (f.g) x ==> f (g x)
-- $ is the function application operator
-- ($) :: (a -> b) -> a -> b
-- The expression f $ x is the same as f x
-- $ is used to avoid parentheses
-- Additonal resource on operators: https://typeclasses.com/featured/dollar

double x = 2*x
quad = double . double 

doTwice :: (a -> a) -> a -> a
doTwice f = f . f

main = do
    print(quad 5)
    -- print(head (reverse "abcd"))
    print(head $ reverse "abcd")
    -- print(reverse (map head (map reverse (["Haskell","pro"] ++ ["dodo","lyric"]))))
    print(reverse . map head . map reverse $ ["Haskell","pro"] ++ ["dodo","lyric"])
    -- Sometimes the operators . and $ are useful as functions in their own right. For example, a list of functions can be applied to an argument using map and a section of $:
    print(map ($ 3) [(4+), (10*), (^2), sqrt])
    print(map ($ "string") [reverse, take 2, drop 2])
