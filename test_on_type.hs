-- test_on_type.hs

module TestOnType where

-- objectif : réussir à faire des opérations entre un nombre Fractional et un nombre de type Int (via la fonction length)
-- dit autrement : on cherche à passer du type Int au type Num

intToNum :: Num a => Int -> a
intToNum 0 = 0
intToNum a = intToNum (a-1) + 1

lengthInNum :: Num b => [a] -> b
lengthInNum list =
    intToNum x where
                x = length list