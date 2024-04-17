module ListMethods where
-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- take elements from a list as long as they satisfy a predicate
-- dropWhile :: (a -> Bool) -> [a] -> [a]
-- drop elements from a list as long as they satisfy a predicate
-- span :: (a -> Bool) -> [a] -> ([a],[a])
-- span p xs is equivalent to (takeWhile p xs, dropWhile p xs)
-- break :: (a -> Bool) -> [a] -> ([a],[a])
-- break p is equivalent to span (not . p)
-- partition :: (a -> Bool) -> [a] -> ([a],[a])
-- partition p xs = (filter p xs, filter (not . p) xs)
-- group :: Eq a => [a] -> [[a]]
-- group xs returns a list of lists such that the concatenation of the result is equal to xs
-- elem :: Eq a => a -> [a] -> Bool
-- elem x xs checks if x is an element of xs
-- notElem :: Eq a => a -> [a] -> Bool
-- notElem x xs checks if x is not an element of xs
-- find :: (a -> Bool) -> [a] -> Maybe a
-- find p xs returns the first element that satisfies the predicate p, or Nothing if no element satisfies p
-- const :: a -> b -> a
-- const x y = x

findSubstring :: String -> String -> String
findSubstring chars = takeWhile (\x -> elem x chars)
                      . dropWhile (\x -> not $ elem x chars)

main = do
    print(findSubstring "a" "bbaabaaaab")
    print(zipWith (++) ["Mr. ","Mary "] ["Smith","Cooper"])
    print(map (const 5) [1,2,3,4] )