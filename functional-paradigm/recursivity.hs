-- Factorial with guards
factorial1 n 
  | n == 0     = 1
  | n > 0      = n * factorial (n - 1)

-- With pattern matching
factorial2 0  =  1
factorial2 n  =  n * factorial (n - 1)

-- Fibonacci
fibonacci 0  = 1
fibonacci 1  = 1
fibonacci n  = fibonacci (n - 1) + fibonacci (n - 2)

-- Prime number
primo :: Int ->  Bool
primo 1 = False
primo 2 = True
primo n = noHayDivisores 2 (n - 1) n

noHayDivisores :: Int -> Int -> Int -> Bool
noHayDivisores minimo maximo n 
    | minimo `esDivisorDe` n = False
    | minimo == maximo       = True
    | otherwise              = noHayDivisores (minimo + 1) maximo n

esDivisorDe unNumero otroNumero = mod otroNumero unNumero == 0