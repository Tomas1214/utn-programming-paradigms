-- TUPLE
age = snd
aux = age ("Laura", 41)
-- ghci> age ("Laura", 41)
--      41
adult :: Integer -> Bool
adult age = age > 18
isAdult :: (String, Integer) -> Bool
isAdult = adult . age
-- ghci> isAdult ("Laura", 41)