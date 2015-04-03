module DNA where

getRNAComplement :: Char -> Char
getRNAComplement 'G' = 'C'
getRNAComplement 'C' = 'G'
getRNAComplement 'T' = 'A'
getRNAComplement 'A' = 'U'
getRNAComplement _ = error "not a base"

toRNA :: String -> String
toRNA = map getRNAComplement

main :: IO ()
main = print $ toRNA "ACG"
