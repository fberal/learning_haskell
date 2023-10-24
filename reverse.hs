-- reverse.hs
module Reverse where

rvrs :: String -> String
rvrs x = (drop 9 x) ++ (take 1 (drop 8 x)) ++ (take 2 (drop 6 x)) ++ (take 1 (drop 5 x)) ++ (take 5 x)

rvrse :: String -> String
rvrse x = a ++ b ++ c ++ d ++ e
    where a = drop 9 x
          b = take 1 $ drop 8 x
          c = take 2 $ drop 6 x
          d = take 1 $ drop 5 x
          e = take 5 x

main :: IO ()
main = print $ rvrse "Curry is awesome"