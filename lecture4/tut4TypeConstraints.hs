module TypeConstraints where
-- Type constraints are a way to restrict the types that a function can take.
-- To signal that f only works on types that are members of the Eq class, we add a type constraint (Eq a) => to the type annotation.
f :: (Eq a) => (a -> a) -> a -> Bool
f g x = x == g x

bothPairsEqual :: (Eq a, Eq b) => a -> a -> b -> b -> Bool
bothPairsEqual left1 left2 right1 right2 = left1 == left2 && right1 == right2
