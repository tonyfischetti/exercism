module LeapYear  where

isLeapYear :: Int -> Bool
isLeapYear  x
    | not $ divBy 4 x                  = False
    | divBy 100 x && not (divBy 400 x) = False
    | otherwise                        = True

divBy :: Int -> Int -> Bool
divBy i x
    | rem x i == 0  = True
    | otherwise     = False
