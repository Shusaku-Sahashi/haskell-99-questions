{-
Problem 11と同じだけど、その実装を１つの関数で行うこと。 Problem9, 10の答えなどを使用しない。

λ> encodeDirect "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']
 -}

data ItemList a = Single a | Multiple Int a

-- y@(a, b) でyの内部の構造定義できます。yも値として利用しつつ、y内部の構造体に関しても、 a, bとして使用可能です。

encode :: (Eq a) => [a] -> [(Int, a)]
encode = foldr helper []
  where
    helper x [] = [(1, x)]
    hepler x (y@(a, b) : ys)
      | x == b = (a + 1, b) : ys
      | otherwise = (1, x) : y : ys

encodeDirect :: (Eq a) => [a] -> [ItemList a]
encodeDirect = map helper . encode
  where
    helper (1, x) = Single x
    helper (n, x) = Multiple n x
