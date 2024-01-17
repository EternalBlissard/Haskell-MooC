module List where
    -- Takes a look at lists in Haskell
    -- Lists are homogenous(can store multiple values of the same type) and most basic data structure in Haskell
    -- Lists are immutable
    -- Lists are constructed using the cons operator (:)

list1 :: [Integer]
list1 = 1:2:3:4:5:[] -- [1,2,3,4,5]
list2 :: [Integer]
list2 = [1,2,3,4,5] -- [1,2,3,4,5]
list3 :: [Integer]
list3 = [5..10]
list4 = [1,4,6,0]
list5 = []
main = do
    print(list1)
    print(list2)
    print(list1 == list2)
    print(head list1)
    print(tail list1)
    print(init list2)
    print(last list2)
    print(take 2 list2) -- prints first n elements
    print(drop 2 list2) -- drops first n elements
    print(list1 ++ list2)
    print(list1 !! 2)
    print(null list5)
