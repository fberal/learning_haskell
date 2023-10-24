-- chapter4_4-8.hs
module IsPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = isPalind
  where isPalind =
          x == reverse x