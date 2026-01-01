import Data.List (group)

{-
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
 -}

peak :: (Eq a) => [a] -> [[a]]
peak (x : xs) =
  let (first, rest) = span (== x) xs
   in (x : first) : peak xs
