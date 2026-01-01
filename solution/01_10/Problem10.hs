{-
λ> encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]

use `peak` method result.
-}

peak :: (Eq a) => [a] -> [[a]]
peak (x : xs) =
  let (first, rest) = span (== x) xs
   in (x : first) : peak rest
peak [] = []

---

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) $ peak xs
