-- DetermineTheType.hs

{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where


example = 1

-- 1.

a = (* 9) 6
b = head [(0,"doge"),(1,"kitteh")]
c = head [(0 :: Integer , "doge"),(1,"kitteh")]
d = if False 
      then True 
    else False
e = length [1,2,3,4,5]
f = (length [1,2,3,4]) > (length "TACOCAT")

-- 2.

x = 5
y = x + 5
w = y * 10

-- 3.

z y = y * 10

-- 4.

f1 = 4 / y

-- 5.

x1 = "Julie"
y1 = " <3 "
z1 = "Haskell"
f2 = x1 ++ y1 ++ z1