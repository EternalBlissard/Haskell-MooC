module Main where
-- Without the use of a helper function


-- -- Takes a look at helper functions
-- repeatHelper :: Int -> String -> String -> String
-- repeatHelper n str result = if (n==0)
--                             then result
--                             else repeatHelper (n-1) str (result++str)
-- main = do
--   print (repeatHelper 5 "hello" "")

-- -- Takes a look at helper functions
-- repeatHelper :: Int -> String -> String -> String
repeatString n str = repeatHelper n str ""

repeatHelper 0 _   result = result
repeatHelper n str result = repeatHelper (n-1) str (result++str)
 
main = do
    print (repeatString 2 "hello")
