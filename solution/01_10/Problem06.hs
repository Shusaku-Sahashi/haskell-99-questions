{-
λ> isPalindrome [1,2,3]
False
λ> isPalindrome "madamimadam"
True
λ> isPalindrome [1,2,4,8,16,8,4,2,1]
True
-}

isPailindrome :: (Eq a) => [a] -> Bool
isPailindrome [] = True
isPailindrome [_] = True
isPailindrome xs = (head xs) == (last xs) && (isPailindrome $ init $ tail xs)
