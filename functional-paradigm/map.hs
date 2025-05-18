map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = f x : map f xs

-- λ map (* 2) [1..5]
--      [2,4,6,8,10]

-- heterogeneous map function
-- sumarPalabras ["paradigmas", "rules", "the", "world"]
-- sumarPalabras palabras = (sum . map length) palabras

-- Building map functions
-- λ map (+) [1, 2, 3]
--      [ (1 +), (2 +), (3 +)]

-- Other way
-- sumarDesde n = (n +):sumarDesde (n + 1)