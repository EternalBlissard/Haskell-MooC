
module DS where
import qualified Data.Map as Map
import Data.Array
-- Data.Map is a module that provides a data structure(Map) for storing key/value pairs.
-- Ops on maps are more efficient than Lists
-- Since Data.Map contains some function with the same names as Prelude functions, the namespace needs to be imported qualified:
-- Important fns for Map
-- -- Create a Map from a list of key-value pairs
-- Map.fromList :: Ord k => [(k, a)] -> Map.Map k a

-- -- Insert a value into a map. Overrides any previous value with the same key.
-- -- Returns a new map. Does not mutate the given map.
-- Map.insert :: Ord k => k -> a -> Map.Map k a -> Map.Map k a

-- -- Get a value from a map using a key. Returns Nothing if the key was not present in the map.
-- Map.lookup :: Ord k => k -> Map.Map k a -> Maybe a
withdraw :: String -> Int -> Map.Map String Int -> Map.Map String Int
withdraw account amount bank =case Map.lookup account bank of
    Nothing  -> bank                                   -- account not found, no change
    Just sum -> Map.insert account (sum-amount) bank   -- set new balance
-- -- An empty map
-- Map.empty :: Map.Map k a

-- Ord constraint for the key type of the map is needed because maps are implemented as ordered binary search trees
-- Note that like all Haskell values, maps are immutable meaning you can’t change a map once you define it. However, map operations like insert produce a new map.

-- Data.Map defines all sorts of useful higher-order functions for updating maps. We can rewrite the withdraw function using Data.Map.adjust:
-- When we import Data.Map we get get Data.Map.Lazy not Data.Map.Strict. The difference is that Data.Map.Lazy is a bit lazier and Data.Map.Strict is a bit stricter. The difference is that Data.Map.Strict is strict in the keys, but lazy in the values. Data.Map.Lazy is lazy in both the keys and the values.

-- Data.Array
-- Data.Array can just be imported normally
-- Array Constructor array :: Ix i => (i, i) -> [(i, e)] -> Array i e
-- type is parameterized by two types: the index type and the element type
-- Can be parameterized as Array Char Int: an array indexed by characters, or Array Bool String, an array indexed by booleans, or even Array (Int,Int) Int, a two-dimensional array of ints
-- Not all types can be index types. Only types that are similar to integers are suitable. That is the reason for the Ix i class constraint. The Ix class collects all the types that can be used as array indices.
-- the array function takes an extra (i,i) parameter. These are the minimum and maximum indices of the array.
-- listArray constructor that just takes a list of elements in order:
-- listArray :: Ix i => (i, i) -> [e] -> Array i e
-- -- Array lookup
-- (!) :: Ix i => Array i e -> i -> e
-- -- Array update
-- (//) :: Ix i => Array i e -> [(i, e)] -> Array i e

main = do
    let bank = Map.fromList [("Bob",100),("Mike",50)]
    print(withdraw "Bob" 80 bank)
    print(bank)
    print(withdraw "Alice" 80 bank)
    print(bank)
    let myArray = listArray (7,11) ["seven", "eight", "nine", "ten", "ELEVEN"]
    print(myArray)
    print(myArray ! 8)
    -- why the (//) operator does multiple updates at once. The reason is the main weakness of Haskell arrays: immutability. Since arrays can’t be changed in place, (//) must copy the whole array. This is why in Haskell it’s often preferable to use lists or maps to store data that needs to be updated. However, arrays may still be useful when constructed once and then used for a large number of lookups.
    print( myArray // [(8,"ocho"),(9,"nueve")])
    print(myArray)