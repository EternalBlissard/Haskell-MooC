module TutMaybe where
    --takes a look at Maybe
    --Maybe is a data type that can either be Just something or Nothing
    --Maybe is used to avoid null pointer exceptions
    --Maybe is used to handle errors
    --Maybe is used to handle missing values
    --Just is used to 

login :: String -> Maybe String
login "f4bulous!" = Just "unicorn73"
login "swordfish" = Just "megahacker"
login _           = Nothing

perhapsMultiply :: Int -> Maybe Int -> Int
perhapsMultiply i Nothing = i
perhapsMultiply i (Just j) = i*j

safeHead :: [a] -> Maybe a
-- safeHead xs = if null xs then Nothing else Just (head xs)
main = do
    print(login "f4bulofus!")
    print(perhapsMultiply 5 (Just 2 ))
