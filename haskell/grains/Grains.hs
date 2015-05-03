module Grains where


square :: Integer -> Integer
square 1 = 1
square i = 2 * square (i-1)

total :: Integer
total = sum $ map square [1..64]
