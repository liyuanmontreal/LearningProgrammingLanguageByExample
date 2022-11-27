(*) Reverse a list.

reverse          :: [a] -> [a]
reverse          =  foldl (flip (:)) []
The standard definition, found in the prelude, is concise, but not very readable. Another way to define reverse is:

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]
However this definition is more wasteful than the one in Prelude as it repeatedly reconses the result as it is accumulated. The following variation avoids that, and thus computationally closer to the Prelude version.

reverse :: [a] -> [a]
reverse list = reverse' list []
  where
    reverse' [] reversed     = reversed
    reverse' (x:xs) reversed = reverse' xs (x:reversed)
And my favorite, although the most unreadable for sure :)

myReverse'' :: [a] -> [a]
myReverse'' xs = foldr (\x fId empty -> fId (x : empty)) id xs []
Another foldl version:

myReverse''' :: [a] -> [a]
myReverse''' = foldl (\a x -> x:a) []