module CustomOps where
-- In Haskell an operator is anything built from the characters !#$%&*+./<=>?@\^|-~
-- Operators can be defined just like functions

(<+>) :: [Int] -> [Int] -> [Int]
xs <+> ys = zipWith (+) xs ys

(+++) :: String -> String -> String
a +++ b = a ++ " " ++ b

main = do
    print([1,2,3] <+> [4,5,6])
    print("Hello" +++ "World")