-- Functions as fst and snd work with tuples
--  fst (a, _) = a
--  snd (_, a) = a

-- Example with complex numbers
type Complex = (Float, Float)
sumC :: Complex -> Complex -> Complex
sumC (real_1, imaginary_1) (real_2, imaginary_2) = (real_1 + real_2, imaginary_1 + imaginary_2)
-- ghci> sumC (1, 2) (4, -1)