module Cases where
data Person = Person {name :: String, age :: Int}
  deriving Show

data SortOrder = Ascending | Descending
data SortField = Name | Age

-- sortByField :: SortField -> [Person] -> [Person]
-- sortByField Name ps = sortBy (comparing name) ps
-- sortByField Age ps = sortBy (comparing age) ps

-- sortPersons :: SortField -> SortOrder -> [Person] -> [Person]
-- sortPersons field Ascending ps = sortByField field ps
-- sortPersons field Descending ps = reverse (sortByField field ps)

-- persons = [Person "Fridolf" 73, Person "Greta" 60, Person "Hans" 65]

nonEmpty :: [a] -> Maybe (NonEmpty a)
nonEmpty [] = Nothing
nonEmpty (x:xs) = Just (x :| xs)

toList :: NonEmpty a -> [a]
toList (x (:|) xs) = x : xs

main = do 
    -- print(sortPersons Name Ascending persons)
    print(nonEmpty [1,2,3])