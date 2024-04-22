module ParameterType where
-- defining Parameterized Types
-- data Maybe a = Nothing | Just a
-- Maybe is a parameterized type. It takes a type parameter a, and constructs a new type Maybe a.
data MaybeInt = NothingInt | JustInt Int
data MaybeBool = NothingBool | JustBool Bool

data Described a = Describe a String

getValue :: Described a -> a
getValue (Describe x _) = x

getDescription :: Described a -> String
getDescription (Describe _ desc) = desc

--  Syntactic Note
--  The type parameter a is a type variable. It is a placeholder for a type that will be specified when the type is used.
-- However any word that starts with a lower case letter is fine. We could have defined Maybe like this:
data Maybe theType = Nothing | Just theType
-- This is a bit confusing, so it’s best to use a, b, c, etc. for type variables.
-- The rules for Haskell identifiers are:

-- Type variables and names for functions and values start lower case (e.g. a, map, xs)
-- Type names and constructor names start with upper case (e.g. Maybe, Just, Card, Heart)
-- Type variables can be any length, but must start with a lower case letter

data Pair a = Pair a a
data Report = Report Int String String

-- Multiple Type Parameters
data Either a b = Left a | Right b