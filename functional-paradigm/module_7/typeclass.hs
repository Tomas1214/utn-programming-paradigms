-- What is sum function's domain? Integers, but also floats and doubles
-- Num is a typeclass which includes all 3 variable types

-- In a similar way, Ord has numbers but also chars, strings and others
-- Ord are all types that can be bigger or smaller than variables of the same type

-- Eq mean they can be compared by "==" or "/="; Ord is a part of Eq

f x _ [] = x
f x y (z:zs)
    | y z > 0   = z + f x y zs
    | otherwise = f x y zs

-- Extra: derivation mechanism

-- If we define our datatype with multiple constructors
-- data Nota = Insuficiente | Regular | Aprobado | Sobresaliente
-- What we are really doing is enumerating values in order, but they aren't ord nor eq value types yet

-- data Nota = Insuficiente | Regular | Aprobado | Sobresaliente deriving (Eq, Ord, Show, Enum)

-- Now...
-- λ Sobresaliente < Regular
-- False
-- λ Sobresaliente == Regular
-- False
-- λ show Regular
-- "Regular"
-- λ Sobresaliente > Regular
-- True
-- λ enumFromTo Insuficiente Aprobado
-- [Insuficiente, Regular, Aprobado]


-- Creating our own
-- class Nota a where
--     aprobo :: a -> Bool
--     promociono :: a -> Bool

-- instance Nota Integer where
--     aprobo nota = nota >= 6
--     promociono nota = nota >= 8

-- data Concepto = Insuficiente | Regular | Aprobado | Sobresaliente 
--     deriving (Eq, Ord, Show, Enum)

-- instance Nota Concepto where
--    aprobo Insuficiente = False
--    aprobo _            = True

--    promociono Sobresaliente = True
--    promociono _             = False

-- λ aprobo 10
-- True
-- λ aprobo 4
-- False
-- λ aprobo Regular
-- True
-- λ promociono 7
-- False
-- λ promociono 10
-- True
-- λ promociono Sobresaliente
-- True