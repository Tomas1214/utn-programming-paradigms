isP :: Char -> Bool
isP = ('p' ==)
composed = (isP . head)