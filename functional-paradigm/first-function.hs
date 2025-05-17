passes :: Int -> Bool --- function name :: input data type -> output data type
passes grade = grade >= 6

-- Running the program
--     $ ghci (o stack ghci)
--         GHCi, version 7.10.3: http://www.haskell.org/ghc/  :? for help
--         Prelude> :l alumnos.hs
--         [1 of 1] Compiling Main             ( alumnos.hs, interpreted )
--         Ok, modules loaded: Main.
--     *Main> aproboAlumno 8
--         True
--     *Main> aproboAlumno 3
--         False

-- Consulting data types
--     *Main> :t aproboAlumno
--         aproboAlumno :: Int -> Bool
--     *Main> :t 8
--         8 :: Num a => a
--     *Main> :t True
--         True :: Bool

-- What value type returns a function when it has x parameter
--     *Main> :t aproboAlumno 8
--         aproboAlumno 8 :: Bool