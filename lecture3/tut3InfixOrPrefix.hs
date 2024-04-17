module InfixPrefix where
-- Infix and Prefix functions
-- Infix functions are functions that are written between their arguments
-- Prefix functions are functions that are written before their arguments
-- Infix functions can be converted to prefix functions by surrounding them with parentheses
-- Prefix functions can be converted to infix functions by surrounding them with backticks
-- operators are applied with prefix notation

main = do
    print((+) 1 2)
    print(zipWith (+) [0,2,5,4] [1,3,3,1])
    print(6 `div` 2)
    print((+3) `map` [1,2,3,4,5])