{-
λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'
-}

myLast :: [a] -> a
myLast [] = error "No end for empty!"
myLast [x] = x
myLast (_ : xs) = myLast xs
