-- chapter4_4-10.hs
module FuncFstSnd where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2 =
  (,) snd1 fst1
  where snd1 =
          (,) (snd tup1) (snd tup2)
        fst1 =
          (,) (fst tup1) (fst tup2)