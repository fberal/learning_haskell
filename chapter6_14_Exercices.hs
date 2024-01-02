-- chapter6_14_Exercices.hs
module Chapter6_14_Exercices where

import Data.List (sort) -- import statements need to be at the beginning of a file, before anything else. (We need this for question 9 in 'Match the types'.)

-- Multiple choice

  -- 1. The Eq class 
    -- c) makes equality tests possible
  -- 2. the type class Ord
    -- b) is a subclass of Eq
  -- 3. Suppose the type class Ord has an operator >. What is the type of >?
    -- a) Ord a => a -> a -> Bool
  -- 4. Inx = divMod 16 12 
    -- c) the type of x is a tuple.
  -- 5. The type class Integral includes
    -- a) Int and Integer numbers.


-- Does it type check?

x :: Int -> Int 
x blah = blah + 20

printIt :: Int -> IO ()
printIt a = putStrLn (show (x a))

  -- 1. Does the following code type check? If not, why not?
data Person = Person Bool deriving (Show)

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

    -- The initial code was missing a 'deriving Show' in the data declaration.

  -- 2. Does the following code type check? If not, why not?
data Mood = 
  Blah | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                 then Blah
                 else x 

    -- The initial code was missign a 'Eq' in the deriving declaration.

  -- 3. If you were able to get settleDown to type check:
    -- a) What values are acceptable inputs to that function?
      -- You can only imput Mood values, i.e. Blah and Woot.

    -- b) What will happen if you try to run settleDown 9? Why?
      -- You will get an error because you need to compare the input with Woot wich is of type Mood and you can only compare too values which are of the same type.

    -- c) What will happen if you try to run Blah > Woot? Why?
      -- You will get an error bacause Ord Mood does not have 'Ord' as an instance.

  -- 4. Does the following type check? If not, why not?
type Subject = String
type Verb = String
type Object = String

data Sentence = 
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

    -- It does type check: s1 is a type 'Object -> Sentence' function and s2 is a type 'Sentence' value.

-- Given a datatype declaration, what can we do?

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah deriving (Eq, Show)

  -- Given the previous datatype definitions, which of the following will type check? For the ones that don't type check, why don't they?

  -- 1.
  -- phew = Papu "chases" True

    -- This one doesn't type check because Papu is expecting Rocks and Yeah type values, not String and Bool. The correct syntax is:  
phew = Papu (Rocks "chases") (Yeah True)

  -- 2. 
truth = Papu (Rocks "chomskydoz")
             (Yeah True)
    -- This one is ok.

  -- 3. 
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
    -- This one is also ok.

  -- 4.
  -- comparePapus :: Papu -> Papu -> Bool
  -- comparePapus p p' = p > p'
    -- This one won't work because there is no 'Ord' instance for the Papu data.

-- Match the types

  -- 1.
i :: Num a => a
i = 1
    -- You can't substitute 'i :: a' here, because 1 needs to be of type 'Num a => a'.

  -- 2.
f :: Float
f = 1.0
    -- You can't substitute ' f :: Num a => a' here, because 1.0 is Fractional and not all Num are Fractional.

  -- 3. 
f' :: Fractional a => a -- Init. f' :: Float
f' = 1.0
    -- This works fine as seen before.

  -- 4.
f'' :: RealFrac a => a -- Init. f'' :: Float
f'' = 1.0
    -- This works fine: RealFrac is at the intersection of Real and Fractional. As 1.0 needs to be Fractional, you can define it as RealFrac because RealFrac is a subclass (subtype ?) of Fractional.

  -- 5.
freud :: Ord a => a -> a -- Init. freud :: a -> a
freud x = x 
    -- This works fine. There is no reason why you couldn't define an identity function within the Ord constraint.

  -- 6.
freud' :: Int -> Int -- Init. freud' :: a -> a
freud' x = x
    -- Same answer here: there is no reason you couldn't define the identity function within the Int values.

  -- 7. 
myX = 1 :: Int
sigmund :: Int -> Int 
sigmund x = myX
    -- You can't substitute 'sigmund :: a -> a' here because the function type is bound by the myX type, which is Int. So you can't ask for any 'forall a' value to be equal to a Int value.

  -- 8.
sigmund' :: Int -> Int
sigmund' x = myX
    -- Same problem here: you can't ask for any 'Num a => a' value to be equal to a Int value so no you can't substitute 'sigmund' :: Num a => a -> a' here.

  -- 9.
  -- The immport declaration needs to be at the top of the file, just after the module name.
jung :: [Int] -> Int -- Init. jung :: Ord a => [a] -> a
jung xs = head (sort xs)
    -- This works fine because Int has an Ord instance.

  -- 10.
young :: Ord a => [a] -> a -- Init. young :: [Char] -> Char
young xs = head (sort xs)
    -- Obviously this works fine here.

  -- 11.
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)
    -- You can't substitute 'signifier :: Ord [a] => a -> a' here because you can't work out any Ord value with the 'mySort' function which is only defined on String ( = [Char] ) values.

-- Type-Kwon-Do Two

  -- 1.
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = (f x) == y

  -- 2.
arith :: Num b => (a->b) -> Integer -> a -> b
arith f x y = (fromInteger x) + (f y)






