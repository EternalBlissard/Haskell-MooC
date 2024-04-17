module Lambda where
    -- Lambda functions are anonymous functions that are used because they are short and simple
    -- They are written as \arg1 arg2 ... argN -> body
    -- They can be used in place of a named function
    -- They can be passed as arguments to higher order functions
    -- They can be returned as values from higher order functions
    -- They can be used to create functions that are not needed elsewhere or are used only once
    -- Its never needed to use a lambda expression. You can always instead define the function normally using let or where.
main = do
    print((\x -> x + 3) 5)
    print((\x y -> x^2+y^2) 2 3 )