-- chapter3_3-8.hs
module ExThreeEight where

addExPt :: String -> String
addExPt x = x ++ "!"

forthStr :: String -> String
forthStr x = drop 4 (take 5 x)

dropnine :: String -> String
dropnine x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! (x-1)

rvrs :: String -> String
rvrs x = (drop 9 x) ++ (take 1 (drop 8 x)) ++ (take 2 (drop 6 x)) ++ (take 1 (drop 5 x)) ++ (take 5 x)