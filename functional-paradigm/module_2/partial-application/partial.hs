import Text.Show.Functions ()

-- ghci> mod 6 3
--      0
-- ghci> mod 6
--      <function>
-- :t mod
--      Integral a => a -> a -> a

next :: Num a => a -> a
next = (1+)