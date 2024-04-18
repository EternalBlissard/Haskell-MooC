module Lists where
-- Lists are a fundamental data structure in Haskell. They are defined in the Prelude as follows:
-- data [] a = [] | a : [a]
-- The operator : is called the cons operator. It is used to add an element to the front of a list.
-- : operator builds a list out of a head and a tai
-- x : xs is the same as [x] ++ xs
-- [x,y,z] or x:y:z:[] or x:(y:(z:[]))

makeNatural :: Int -> [Int]
makeNatural 0 = []
makeNatural n = n : makeNatural (n-1)

startAssending :: Int -> [Int]
startAssending n = reverse (makeNatural n)

iterate' f 0 x = [x]
iterate' f n x = x : iterate' f (n-1) (f x)

split :: Char -> String -> [String]
split c [] = []
split c xs = start : split c (drop 1 rest)
  where start = takeWhile (/=c) xs
        rest = dropWhile (/=c) xs

sumFirstThree :: [Int] -> Int

sumFirstThree (a:b:c:_) = a + b + c
sumFirstThree _ = 0

describeList :: [Int] -> String
describeList []         = "an empty list"
describeList (x:[])     = "a list with one element"
describeList (x:y:[])   = "a list with two elements"
describeList (x:y:z:[]) = "a list with three elements"
describeList (x:y:z:xs) = "a list with more than three elements"

sumNumbers :: [Int] -> Int
sumNumbers [] = 0
sumNumbers (x:xs) = x + sumNumbers xs

myMaximum :: [Int] -> Int
myMaximum [] = 0       -- actually this should be some sort of error...
myMaximum (x:xs) = go x xs
  where go biggest [] = biggest
        go biggest (x:xs) = go (max biggest x) xs

doubleList :: [Int] -> [Int]
doubleList [] = []
doubleList (x:xs) = 2*x : doubleList xs

-- -- Map Implementation
-- map :: (a -> b) -> [a] -> [b]
-- map _ []     = []
-- map f (x:xs) = f x : map f xs

-- Filter Implementation
-- filter :: (a -> Bool) -> [a] -> [a]
-- filter _pred []    = []
-- filter pred (x:xs)
--   | pred x         = x : filter pred xs
--   | otherwise      = filter pred xs

--When a recursive function evaluates to a new call to that same function with different arguments, it is called tail-recursive.

-- Not tail recursive!
sumNumbers' :: [Int] -> Int
sumNumbers' [] = 0
sumNumbers' (x:xs) = x + sumNumbers xs

-- Tail recursive version
sumNumbers'' :: [Int] -> Int
sumNumbers''  xs = go 0 xs
  where go sum [] = sum
        go sum (x:xs) = go (sum+x) xs

main = do
    print(makeNatural 5)
    print(startAssending 5)
    print(iterate' (*2) 5 1)
    print(split ',' "a,b,c,d,e")
    print(sumFirstThree [1,2,3,4,5])
    print(describeList [1,2,3,4,5])
    print(sumNumbers [1,2,3,4,5])
    print(myMaximum [-1,-2,-3,-4,-5])
    print(doubleList [1,2,3,4,5])