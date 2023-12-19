-- chapter6_8-DayOfWeek.hs
module Chapter6_8_DOW where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun 
  deriving (Ord, Show)

data Date =
  Date DayOfWeek Int deriving Show

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Weds Weds = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (==) (Date weekday dayOfMonth)
       (Date weekday' dayOfMonth') =
    weekday == weekday'
    && dayOfMonth == dayOfMonth'

-- Exemple de déclaration d'instance Ord mais pas bonne car ici pas cohérente :
-- par exemple, ici, on a bien "Mon2 == Tue2" qui retourne False
-- mais "compare Mon2 Tue2" retourne EQ... 

data DayOfWeek2 =
  Mon2 | Tue2 | Weds2 | Thu2 | Fri2 | Sat2 | Sun2 
  deriving (Eq, Show)

instance Ord DayOfWeek2 where
  compare Fri2 Fri2 = EQ
  compare Fri2 _ = GT
  compare _ Fri2 = LT
  compare _ _ = EQ