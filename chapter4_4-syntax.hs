-- chapter4_4-syntax.hs
module ChapterFourSyntax where

x = (+)

f :: [a] -> Int
f xs = 
  w `x` 1
  where w = 
          length xs

functionId :: a -> a
functionId x =
  x

fbis :: (a,b) -> a
fbis x =
  fst x 