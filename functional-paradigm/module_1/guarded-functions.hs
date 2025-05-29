max x y | x > y     = x
        | otherwise = y

-- Haskell's version of...
--      max : ℤ^2 -> ℤ [ max (x,y) = x  x > y
--                     [ max (x,y) = y  y >= x

-- BUT we can compare chars, strings and bools