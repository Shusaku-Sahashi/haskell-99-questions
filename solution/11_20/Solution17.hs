{-
λ> split "abcdefghik" 3
("abc", "defghik")
-}

split' :: [a] -> Int -> ([a], [a])
split' xs n = (take n xs, drop n xs)

split :: [a] -> Int -> ([a], [a])
split = split
