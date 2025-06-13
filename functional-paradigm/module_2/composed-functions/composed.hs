double x = 2 * x
quadruple :: Float -> Float
quadruple = double . double
-- Which is the simplified version for quadruple number = (double . double) number
-- "quadruple number = double . double number" would be read as "quadruple number = double . (double number)" which would be wrong since haskell can only compose functions with other functions"
-- Yet we could write "quadruple number = double (double number)" instead

-- What if we want to know wether if somebody's name has a pair number of letters?
pairName :: String -> Bool
pairName = even . length

-- Once more...
-- pairName name = (even . length) name