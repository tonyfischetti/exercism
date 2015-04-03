module Accumulate where

accumulate :: (a -> a1) -> [a] -> [a1]
accumulate _ [] = []
accumulate f (x:xs) = f x : accumulate f xs
