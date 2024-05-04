module Heirarchies where 
-- In haskell both the classes and instances can have heirarchies. This means that a class or instance depends on another class or instance.

data Pair a = MakePair a a
  deriving Show


instance Eq a => Eq (Pair a) where
  (MakePair x y) == (MakePair a b)   =   x==a && y==b

-- playing with another instance
class Check a where
  check :: a -> Bool

instance Check Int where
  check x = x > 0

instance Check a => Check [a] where
  check xs = and (map check xs)

-- -- another instance
-- instance (Eq a, Eq b) => Eq (Either a b) where
--   Left x  == Left y   =  x==y
--   Right x == Right y  =  x==y
--   _       == _        =  False

-- Just like in OOPs when a class inherits from another class, in Haskell a class can inherit from another class and the one inheriting is called a subclass and the one being inherited is called a superclass.

class Size a where
  size :: a -> Int

class Size a => SizeBoth a where
  sizeBoth :: a -> a -> Int
  sizeBoth x y = size x + size y

-- SizeBoth is a subclass of Size, and Size is a superclass of SizeBoth. This means that any instance of SizeBoth must also be an instance of Size.

main  = do 
    print(MakePair 1 1 == MakePair 1 1)
    print(MakePair 1 1 == MakePair 1 2)
    -- print(sizeBoth "hi" "there")
    