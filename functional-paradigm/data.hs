-- Data is useful to reutilize a data type
data Person = Person String Int -- The first "Person" is the data type, and the second one is the construct

-- For pattern matching
name (Person _name _age) = _name
age (Person _name _age) = _age

-- Defining a person with record syntax
-- juan = Person {
--     name = "Juan",
--     age = 29,
--     domicilio = "Ayacucho 554",
--     number = "45232598",
--     bornOn = (17,7,1988),
--     goodPerson = True,
--     money = 30.0
-- } deriving (Show) -- Now we can use "ghci> juan"
-- Now we could write something like
--  ghci> number juan