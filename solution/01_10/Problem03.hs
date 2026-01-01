{-
λ> elementAt [1,2,3] 2
2
λ> elementAt "haskell" 5
'e'
 -}

elementAt :: [a] -> Int -> a
elementAt xs 1 = head xs
elementAt [] _ = error "Index out of bound"
elementAt (x : xs) n
  | n < 1 = error "Index out of bound"
  | otherwise = elementAt xs (n - 1)
