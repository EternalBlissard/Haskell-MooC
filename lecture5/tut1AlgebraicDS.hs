module AlgebraicDS where
-- Haskell has a system called algebraic datatypes for defining new types
-- Algebraic datatypes are a way to define new types by combining existing types
-- The simplest form of algebraic datatype is a product type, which is a type that contains multiple values
-- The simplest form of product type is a tuple
-- A tuple is a product of multiple values
-- Example of defining a new type using algebraic datatypes:
data Bool = True | False
data Ordering = LT | EQ | GT
-- definition of a type with three values
data Color = Red | Green | Blue

-- a function that uses pattern matching on our new type
rgb :: Color -> [Double]
rgb Red = [1,0,0]
rgb Green = [0,1,0]
rgb Blue = [0,0,1]

-- Fields in a data constructor can have different types
-- Types like Bool, Ordering and Color that just list a bunch of constants are called enumerations or enums in Haskell and other languages
data Report = ConstructReport Int String String
reportContents :: Report -> String
reportContents (ConstructReport id title contents) = contents

-- Constructors
-- The things on the right hand side of a data declaration are called constructors.
-- True, False, Red and ConstructReport are all examples of constructors. 
-- A type can have multiple constructors, and a constructor can have zero or more fields.

-- Here is a datatype for a standard playing card. It has five constructors, of which Joker has zero fields and the others have one field.

data Card = Joker | Heart Int | Club Int | Spade Int | Diamond Int
    deriving Show -- they are not part of the Show class. The easy solution is to just add a deriving Show after the type definition: to be able to print them

-- Algebraic Why?
-- This is because, theoretically speaking, each datatype can be a sum of constructors, and each constructor is a product of fields

-- data Bool = True | False            -- corresponds to 1+1. Has 2 possible values.
-- data TwoBools = TwoBools Bool Bool  -- corresponds to Bool*Bool, i.e. 2*2. Has 4 possible values.
-- data Complex = Two Bool Bool | One Bool | None
--                                     -- corresponds to Bool*Bool+Bool+1 = 2*2+2+1 = 7. Has 7 possible values.
main = do
    print(reportContents(ConstructReport 1 "Title" "This is the body."))