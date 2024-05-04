module Deriving where

-- The deriving keyword is used to automatically make instances of classes for a data type.
-- Show and Read are usually always derived to showcase standard behavior
-- The derived Ord instance might not be what you want. It orders constructors left-to-right, and then compares fields inside constructors left-to-right.
data Person = Dead | Alive String Int
  deriving (Show, Eq, Ord)
-- We can use the :info command in GHCi to get the contents and instances of a class
main = do
    print(Alive "Bob" 20 == Alive "Bob" 20)
    print(Alive "Bob" 20 == Alive "Bob" 21)
    print(Alive "Bob" 20 < Alive "Alice" 20)
    print(Alive "Bob" 20 < Alive "Bob" 21)
    print(Dead < Alive "Bob" 20)