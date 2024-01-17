module TutEither where
    --takes a look at Either
    --Either is a data type that can either be Left something or Right something
    --By convention left is for errors and right is for success

iWantAString :: Either Int String -> String
iWantAString (Right str)   = str
iWantAString (Left number) = show number

main = do
    print(iWantAString (Right "hello"))
    print(iWantAString (Left 5))