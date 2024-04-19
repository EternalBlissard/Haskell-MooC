module TypeClasses where
-- Type classes are a way to define a set of functions that can behave differently depending on the type of the input.

-- The type (Num a) => a -> a -> a means: for all types a that belong to the class Num, this is a function of type a -> a -> a. That is, you can give two values of the same type a to + and get out a third value of type a, as long as a is a member of Num.

-- The type (Eq a) => a -> a -> Bool means: for all types a that belong to the class Eq, this is a function of type a -> a -> Bool. That is, you can give two values of the same type a to == and get out a Bool, as long as a is a member of Eq.

-- Num and Eq are type classes. A type class is a way to group together types that support similar operations.

--  A type class is a collection of types. It doesn’t have much to do with the classes of object oriented programming! 
