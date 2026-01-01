import Data.List (group)

{-
λ> compress "aaaabccaadeeee"
"abcade"
-}

{-
 - compress = map head $ gorup だとNGな理由
  -> `$` の場合、`$` の右側の要素を `map head` に適用するという感じになるが、 `group` がまだ評価されていないので、関数を `map head` に適用する形になるため型が合わなくなる。
-}
compress :: (Eq a) => [a] -> [a]
compress = map head . group
