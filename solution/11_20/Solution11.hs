{-
 -Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
 Only elements with duplicates are transferred as (N E) lists.

λ> encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

pack :: (Eq a) => [a] -> [[a]]
pack (x : xs) =
  let (first, rest) = span (== x) xs
   in (x : first) : pack rest

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) $ pack xs

----------------------------------

data ListItem a = Single a | Multiple Int a
  deriving (Show)

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified = map encodeHelper . encode
  where
    encodeHelper (1, x) = Single x
    encodeHelper (n, x) = Multiple n x
