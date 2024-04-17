module WhatFollows where
-- Working towards the simplification of whatFollows which is as described


tails :: [a] -> [[a]]
tails [] = [[]]
tails xs = xs : tails (tail xs)

-- substringsOfLength :: Int -> String -> [String]
-- substringsOfLength n string = map shorten (tails string)
--   where shorten s = take n s

-- whatFollows :: Char -> Int -> String -> [String]
-- whatFollows c k string = map tail (filter match (substringsOfLength (k+1) string))
--   where match sub = take 1 sub == [c]

whatFollows :: Char -> Int -> String -> [String]
whatFollows c k string = map tail (filter match ( map shorten (tails string)))
  where shorten s = take (k+1) s
        match sub = take 1 sub == [c]

whatFollows' :: Char -> Int -> String -> [String]
whatFollows' c k string = map tail . filter(\sub -> take 1 sub == [c]) . map(\s -> take (k+1) s) $ tails string
main = do 
    print(whatFollows' 'a' 2 "akadbakadbamebo")
