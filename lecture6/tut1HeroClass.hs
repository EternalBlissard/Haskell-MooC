module WorkingHeroClass where

data Color = Black | White

instance Eq Color where
  Black == Black  = True
  White == White  = True
  _     == _      = False

-- A class can contain multiple functions, and even constants. Here we define a new version of the Size class with more content.
class Size a where
  empty :: a
  size :: a -> Int
  sameSize :: a -> a -> Bool

instance Size (Maybe a) where
  empty = Nothing

  size Nothing = 0
  size (Just a) = 1

  sameSize x y = size x == size y

instance Size [a] where
  empty = []
  size xs = length xs
  sameSize x y = size x == size y

main = do
    print(1)
