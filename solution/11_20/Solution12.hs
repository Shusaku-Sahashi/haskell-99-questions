{-
Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

 λ> decodeModified
       [Multiple 4 'a',Single 'b',Multiple 2 'c',
        Multiple 2 'a',Single 'd',Multiple 4 'e']
"aaaabccaadeeee"
 -}

data ListItem a = Single a | Multiple Int a
  deriving (Show)

decodeModified :: [ListItem a] -> [a]
decodeModified [] = []
decodeModified (x : xs) = case x of
  (Single c) -> [c]
  (Multiple n c) -> replicate n c

-- もしくは、畳み込みを使用して以下の様に encode を定義することも可能。

encode :: [(Int, a)] -> [a]
encode = foldr f []
  where
    f (1, x) r = x : r
    f (n, x) r = x : f (n - 1, x) r

toTuple :: ListItem a -> (Int, a)
toTuple (Single x) = (1, x)
toTuple (Multiple n x) = (n, x)

encodeModified' :: [ListItem a] -> [a]
encodeModified' xs = encode $ map toTuple xs
