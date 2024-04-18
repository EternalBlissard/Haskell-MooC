module TypedHoles where
-- when writing Haskell it can be tricky to find expressions that have the right type
-- GHCi has a feature called typed holes that can help with this
-- A typed hole is a placeholder that you can use to ask GHCi to infer the type of an expression
-- To use a typed hole, write an underscore _ followed by a double dash -- and a description of what you want
-- GHCi will then tell you the type of the expression that you wrote
-- This can be very useful when you are trying to write a complex expression and you are not sure what the type should be
-- You can use typed holes in GHCi, but also in source files
-- To use typed holes in source files, you need to enable the extension {-# LANGUAGE TypeHoles #-}
-- This extension is enabled by default in GHCi

keepElements :: [a] -> [Bool] -> [a]
keepElements xs bs = map fst (filter snd (zip xs bs))

-- Remember typed holes when you get stuck with type errors when working on the exercises! Try replacing a function or variable with a typed hole. It might help you figure out what you need.

main = do
    print(keepElements [5,6,7,8] [True,False,True,False])