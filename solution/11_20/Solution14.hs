{-
λ> dupli [1, 2, 3]
[1,1,2,2,3,3]
 -}

-- pattern1 use concatMap
dupli :: [a] -> [a]
dupli = concatMap (\x -> [x, x])

-- pattern2
dupli' :: [a] -> [a]
dupli' (x : xs) = x : x : dupli xs

-- pattern3 use Monad
dupli'' :: [a] -> [a]
dupli'' xs = xs >>= (\x -> [x, x])
