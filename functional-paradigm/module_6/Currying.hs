-- Lambda in haskell
-- ghci> (\x -> x * x) 2
-- 4

-- Makes possible to define nameless functions where /argument -> body

-- With fold (foldl):
data Empleado = Empleado {
    nombre :: String,
    sueldo :: Float,
    cantidadHijos :: Int,
    sector :: String 
} deriving (Show)

-- Y dada una lista de empleados
type Nomina = [Empleado]

empleados :: Nomina
empleados = [
    Empleado { nombre = "mara", sueldo = 17000.0, cantidadHijos = 1, sector = "contaduria" },
    Empleado { nombre = "gerardo", sueldo = 15000.0, cantidadHijos = 2, sector = "ventas" }
  ]

-- λ foldl (\total empleado -> total + sueldo empleado) 0.0 empleados
-- λ foldl (\total empleado -> total + cantidadHijos empleado) 0 empleados

-- With foldr (fold right, which operates from right to left)
-- λ foldr ((+) . sueldo) 0 empleados

-- Also with a lambda expression
-- λ foldr (\empleado total -> total + sueldo empleado) 0.0 empleados


-- Definition

-- "λ map (\(a, b) -> a + b) [(1, 2), (3, 5), (6, 3), (2, 6), (2, 5)]" lambda expression goes like sum but for two numbers tuples.
-- "\(a, b) -> a + b" isn't the same as "\ a b -> a + b"
-- The first one doesn't work with partial application, so it isn't curried like the second one.


-- Widely...

-- "f :: a -> b -> c" is the curried shape of a function with only one argument (tuple)
-- "g :: (a, b) -> c" is a non curried function


-- Currying makes partial application possible

-- multiplicaPar :: Num a => (a, a) -> a
-- multiplicaPar (a, b) = a * b

-- λ map ((curry multiplicaPar) 2) [1..5]
-- [2, 4, 6, 8, 10]


-- How currying works

-- λ 2 * 3
-- (*) :: Num a => a -> a -> a
-- (*) :: Num a => a -> (a -> a)

-- In addition
-- (\x y -> x + y)
-- \x -> (\y -> x + y)

-- With strings (first letter)
-- type Palabra = String
-- empiezaCon :: Char -> Palabra -> Bool
-- empiezaCon letra palabra = ((== letra) . head) palabra
-- (\letra -> (\palabra -> ((== letra) . head) palabra))
-- Ex: λ (\letra -> (\palabra -> ((== letra) . head) palabra)) 'a'