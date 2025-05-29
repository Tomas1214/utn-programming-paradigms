-- ghci> filter (\x -> x `mod` 2 == 0) [1, 2, 3, 4]
-- Result: [2, 4]

-- Other example
-- λ filter ((\unaEdad -> unaEdad < 20 || unaEdad > 60). edad) clientes

-- facturacionSupera cliente monto =
--     ((> monto) . sum . facturas) cliente
-- λ filter (flip facturacionSupera 100000) clientes