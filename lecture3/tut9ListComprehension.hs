module ListComprehension where
-- Haskell has list comprehensions, a nice syntax for defining lists that combines the power of map and filter
-- List comprehensions are a way to build lists using a syntax that is similar to set comprehensions in mathematics.

-- -- Equivalent
-- [f x | x <- lis, p x]
-- map f (filter p lis)

firstLetters string = [ char | (char:_) <- words string ]

main = do
    -- mapping 
    print([x*3 | x <- [1..10]])
    -- filtering
    print([x | x <- [1..10], x*3 >= 10])
    -- multiple predicates
    print([x | x <- [1..10], x*3 >= 10, x /= 4])
    -- multiple lists
    print([x+y | x <- [1,2,3], y <- [4,5,6]])
    print([ first ++ " " ++ last | first <- ["John", "Mary"], last <- ["Smith","Cooper"] ])
    -- local definitions
    print([ reversed | word <- ["this","is","a","string"], let reversed = reverse word ])
    print(firstLetters "The quick brown fox")