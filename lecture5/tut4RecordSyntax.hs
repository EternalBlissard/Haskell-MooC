module RecordSyntax where

-- If some fields need to be accessed often, it can be convenient to have helper functions for reading those fields. For instance, the type Person might have multiple fields:
data Person = MkPerson String Int String String String 
    deriving Show

-- The fields are the person’s name, age, address, city, and profession. To access the name field, we could use pattern matching:
-- let people = [ MkPerson "Jane Doe" 21 "Houston" "Texas" "Engineer",
--                 MkPerson "Maija Meikäläinen" 35 "Rovaniemi" "Finland" "Engineer",
--                 MkPerson "Mauno Mutikainen" 27 "Turku" "Finland" "Mathematician" ]
let people1 = MkPerson "Jane Doe" 21 "Houston" "Texas" "Engineer";


query :: [Person] -> [Person]
query [] = []

-- The current state provides little info so haskell has a method rec syntax
-- Haskell has a feature called record syntax that is helpful in these kinds of cases. The datatype Person can be defined as a record:
-- data Person = MkPerson { name :: String, age :: Int, town :: String, state :: String, profession :: String}
--   deriving Show

main = do

  print(people1)
  -- query to find all engineers in Finland
  print(query (MkPerson name age town state profession):xs
  | state == "Finland" && profession == "Engineer" =
      (MkPerson name age town state profession) : query xs
  | otherwise = query xs)