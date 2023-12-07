-- chapter6_5-Eq-instances.hs
module Chapter6_5_ex where


data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn x') =
    x == x'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two x y)
       (Two x' y') =
    x == x' 
    && y == y'

data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAnInt x') = 
    x == x'
  (==) (TisAString x) (TisAString x') =
    x == x'
  (==) _ _ = False
