import Data.Fixed (E0)

{-
λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13
-}

myLength :: [x] -> Int
myLength [] = 0
myLength (x : xs) = 1 + myLength xs

myLength' :: [x] -> Int
myLength' = foldr (\x -> (+) 1) 0
