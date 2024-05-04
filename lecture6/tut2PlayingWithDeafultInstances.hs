module PlayingWithInstances where
-- We can define a class with a function that takes two arguments, and then define instances for that class that take one argument.
-- We can give haskell classes a default implementation for functions, and then override that implementation in the instances.

-- An example of a class with a default implementation for a function.
class Example a where
  example :: a           -- the main example for the type `a`
  examples :: [a]        -- a short list of examples
  examples = [example]   -- ...defaulting to just the main example

instance Example Int where
  example = 1
  examples = [0,1,2]

instance Example Bool where
  example = False

-- a final word on default implementations, if there is never a need to override the default definition, the function can be moved out of the class for simplicity.

-- Making a class for pair in Haskell
data IntPair = IntPair Int Int
  deriving Show

instance Eq IntPair where
  IntPair a1 a2 == IntPair b1 b2  =  a1==b1 && a2==b2

instance Ord IntPair where
  IntPair a1 a2 <= IntPair b1 b2
     | a1<b1     = True
     | a1>b1     = False
     | otherwise = a2<=b2
main = do
    print(example :: Int)
    print(examples :: [Int])
    print(example :: Bool)
    print(examples :: [Bool])
    -- print(example :: Char)
    -- print(examples :: [Char])
    print(IntPair 1 2 == IntPair 1 2)
    
