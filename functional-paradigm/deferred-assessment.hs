fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Evaluates only what's needed
take 10 fibs