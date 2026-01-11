{-
λ> dropEvery "abcdefghik" 3
"abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs n = dropEvery''' xs n 1
  where
    dropEvery''' [] _ _ = []
    dropEvery''' (x : xs) n i = (if (n `divides` i) then [] else [x]) ++ dropEvery''' xs n (i + 1)
    divides x y = y `mod` x == 0
