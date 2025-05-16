-- With adress and pattern matching:
type Person = (String, Integer, String) -- tuple
age :: Person -> Integer
age (_, e, _) = e -- Uses pattern matching to get the age, ignoring name or adress
laura :: Person
laura = ("Laura", 41, "Medrano 951 CABA")
adult :: Integer -> Bool
adult age = age > 18
isAdult :: Person -> Bool
isAdult = adult . age -- Low coupling with it's functions since it stays the same