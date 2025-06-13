-- With type:

-- Type creates a synonym for and existing type, lightweight but fragile and with nameless fields
type Person = (String, Integer, String)

laura :: Person -- Instance of person
laura = ("Laura", 41, "Medrano 951 CABA")

isAdultAge :: Person -> Bool
isAdultAge = isAdult . personAge -- Low coupling with it's functions since it stays the same
    where
      personAge :: Person -> Integer
      personAge (_, e, _) = e -- Uses pattern matching to get the age, ignoring name or adress in the tuple
      
      isAdult :: Integer -> Bool
      isAdult age = age > 18

-- We could also use data (better way)

-- data supports named fields and type-safe, useful for modeling
data DataPerson = DataPerson {
    name    :: String,
    age     :: Integer,
    address :: String
} deriving (Show) -- Enable printing

adrian :: DataPerson
adrian = DataPerson { name = "Laura", age = 41, address = "Medrano 951 CABA" }

isDataAdultAge :: DataPerson -> Bool
isDataAdultAge person = 18 < age person