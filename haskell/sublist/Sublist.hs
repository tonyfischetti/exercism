module Sublist (Sublist(..), sublist) where

import Data.List

data Sublist = Equal | Sublist | Superlist | Unequal deriving (Show, Eq)


sublist :: (Eq a) => [a] -> [a] -> Sublist
sublist a b
    | a == b         = Equal
    | isInfixOf a b  = Sublist
    | isInfixOf b a  = Superlist
    | otherwise      = Unequal

