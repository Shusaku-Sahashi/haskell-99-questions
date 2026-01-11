{-
 λ> repli "abc" 3
"aaabbbccc"
 -}

repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs

-- flipを使用してもっと完結に書く
--
-- なぜ concatMap . replicate が合成できるのか？ この場合、
-- - concatMap => (a -> b) -> a -> b
-- - replicate => Int -> a -> [a]
-- replicateは Int を部分適用をすると、 a -> [a] になり、 concatMap の引数と一致する。
repli' :: [a] -> Int -> [a]
repli' = flip $ concatMap . replicate
