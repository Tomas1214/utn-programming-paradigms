-- A higher-order function that turns a list into a single value by applying an accumulative operation over its elements.
-- sum = foldl1 (+)
-- product = foldl1 (*)
-- concat = foldl1 (++)
-- maximum = foldl1 max

suma :: [Int] -> Int
suma = foldr (+) 0