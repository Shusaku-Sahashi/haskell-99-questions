{-
λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [] = error ""
myButLast [x] = error ""
myButLast (x : xs) =
  if length xs == 1
    then x
    else myButLast xs
