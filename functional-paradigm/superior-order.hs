-- Nos piden tres requerimientos:
-- necesitamos saber qué clientes nos deben más de $ 10.000
-- también qué clientes tienen un nombre palíndromo (capicúa)
-- y qué clientes tienen alguna factura de exactamente $ 500.000

-- Representamos a un cliente con
-- el nombre, un String
-- la deuda, un número con decimales
-- y la facturación, una lista con números (para simplificar el ejemplo)

data Cliente = Cliente {
    nombre :: String, 
    deuda :: Float,
    facturas :: [Float]
} deriving (Show)

clientes = [ 
    Cliente "Biasutto" 6000 [4000, 5000],
    Cliente "Colombatti" 15000 [30000],
    Cliente "Marabotto" 200 [500000, 140000]
 ]

-- Caso base: si la lista está vacía, se devuelve una vacía
clientesQueDeben plata [] = [] -- El valor de entrada corresponde a la plata.
-- Caso recursivo: toma head y tail de clientes
clientesQueDeben plata (cliente:clientes)
   | ((> plata) . deuda) cliente = cliente:clientesQueDeben plata clientes
   | otherwise           = clientesQueDeben plata clientes

clientesPalindromos [] = []
clientesPalindromos (cliente:clientes) 
   | (palindromo . nombre) cliente 
                          = cliente:clientesPalindromos clientes
   | otherwise            = clientesPalindromos clientes

palindromo nombre = nombre == (reverse nombre)

clientesConFacturaDe plata [] = []
clientesConFacturaDe plata (cliente:clientes) 
   | (elem plata . facturas) cliente = cliente:clientesConFacturaDe plata clientes
   | otherwise      = clientesConFacturaDe plata clientes

-- Filter
-- filter f [] = []
-- filter f (x:xs) | f x       = x : filter f xs
--                 | otherwise = filter f xs

-- Ahora podríamos escribir en la consola
-- λ filter ((> 10000) . deuda) clientes
-- λ filter (palindromo . nombre) clientes
-- λ filter (elem 500000 . facturas) clientes