-- chapter4_4-9.hs
module MyAbs where

myAbs :: Integer -> Integer
myAbs x =
  if isPositive x 
    then x
  else
    -x
  where isPositive x =
          x > 0


myAbs1 :: Integer -> Integer
myAbs1 x =
  if x>0
    then x
  else
    -x