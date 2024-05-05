module Boxes where
-- Often, we don’t need a new type, but instead can just reuse a standard type. For example, repesenting car register plate numbers with String
-- But doing so can lead to errors, for example, if we accidentally pass a string representing a car register plate number to a function that expects a string representing a name.
-- To avoid this, we can use newtype to create a new type that is distinct from the original type, but which has the same representation.
-- The newtype keyword is used to define a new type that has exactly one constructor and exactly one field.
-- The new type is distinct from the original type, but has the same representation at runtime.
-- The new type is used to avoid errors by making the type system more precise.

data Plate = Plate String
  deriving (Show, Eq)

-- parsePlate :: String -> Maybe Plate
-- parsePlate string
--   | correctPlateNumber string  =  Just (Plate string)
--   | otherwise                  =  Nothing

data Money = Money Int
  deriving Show

renderMoney :: Money -> String
renderMoney (Money cents) = show (fromIntegral cents / 100)

(+!) :: Money -> Money -> Money
(Money a) +! (Money b) = Money (a+b)

scale :: Money -> Double -> Money
scale (Money a) x = Money (round (fromIntegral a * x))

addVat :: Money -> Money
addVat m = m +! scale m 0.24

makeQuarters :: Money -> Money
makeQuarters (Money a) = Money (a `div` 25)

main = do
    print(Money 100 +! Money 200)
    print(scale (Money 100) 1.5)
    print(addVat (Money 100))
    print(makeQuarters (Money 100))

