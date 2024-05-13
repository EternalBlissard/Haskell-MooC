module  Monoid where
-- A pattern that comes up surprisingly often in functional programming is the monoid 

-- Associative Monoid
-- add list concatenate 
-- function f is associative if these are the same

-- Semigroups 
-- an associative function (or operator) forms a semigroup
class Semigroup a where
  -- An associative operation.
  (<>) :: a -> a -> a

data Sum a = Sum a
instance Num a => Semigroup (Sum a) where
  Sum a <> Sum b  =  Sum (a+b)

-- A type forms a monoid if there’s a way of combining two elements of the type together so that parenthesis don’t matter, and there’s a also an “empty element” that can be combined with things without changing them.
data Product a = Product a
instance Num a => Semigroup (Product a) where
  Product a <> Product b   =  Product (a*b)

main = do
    -- print([1] <> [2,3] <> [4])
    -- print(Product 3 <> Product 6)


