module Guards where
    -- Takes a look at Guards 
    -- Alternative to if then else as they get cubersome and spacey
    -- Guards are more readable and look similar to switch case
    -- Guards are a sequence of boolean expressions
    -- The first expression that evaluates to true is executed
    -- The last expression is the default case

    --Guards syntax
    --     f x y z
    --   | condition1 = something
    --   | condition2 = other
    --   | otherwise  = somethingother

    -- Simple example
factorial n
    | n<0       = -1
    | n==0      = 1
    | otherwise = n * factorial (n-1)

    -- Example with pattern matching
guessAge :: String -> Int -> String
guessAge "Griselda" age
    | age < 47 = "Too low!"
    | age > 47 = "Too high!"
    | otherwise = "Correct!"
guessAge "Hansel" age
    | age < 12 = "Too low!"
    | age > 12 = "Too high!"
    | otherwise = "Correct!"
guessAge name age = "Wrong name!"

main = do
    print(factorial 5)
    print(guessAge "Griselda" 47)