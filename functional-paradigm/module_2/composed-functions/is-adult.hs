-- TUPLE
age :: (String, Integer) -> Integer
age = snd
-- Now "age" works as a specific version of "snd"
-- Equivalent to: age (_, x) = x

aux :: Integer
-- aux isn't a function but a constant value since it doesn't recieve any arguments
aux = age ("Laura", 41)
-- ghci is-adult.hs
-- ghci> age ("Laura", 41)
-- 41
-- ghci> :q

isAdultAge :: Integer -> Bool
isAdultAge age = age > 18
-- isAdultAge = (> 18)

isAdultPerson :: (String, Integer) -> Bool
isAdultPerson = isAdultAge . age
-- ghci is-adult.hs
-- ghci> isAdult ("Laura", 41)
-- True
-- ghci> :q


-- Function with where:
-- isAdultPerson :: (String, Integer) -> Bool
-- isAdultPerson person = isAdultAge (age person)
--   where
--     isAdultAge :: Integer -> Bool
--     isAdultAge ageValue = ageValue > 18
-- functions defined inside others have limited scope and can't be used as public functions