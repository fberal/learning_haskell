-- chapter6_6-Fractional.hs
module Chapter6_6_Fractional where


divideThenAdd :: Fractional a => a -> a -> a
divideThenAdd x y = (x / y) + 1

substractThenAdd :: Num a => a -> a -> a
substractThenAdd x y = (x - y) + 1