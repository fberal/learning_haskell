-- greetIfCool3.hs
module GreetIfCool3 where

-- version avec le test directement dans la ligne du "if"
greetIfCool :: String -> IO ()
greetIfCool coolness =
  if coolness == "downright frosty yo"
    then putStrLn "Eyyyyy. What's shakin'?"
  else
    putStrLn "Pshhhh."

-- version avec l'utilisation du "_=" car dichotomie des cas ici          
greetIfCool1 :: String -> IO ()
greetIfCool1 "downright frosty yo" = 
  putStrLn "Eyyyyy. What's shakin'?"          
greetIfCool1 _= 
  putStrLn "Pshhhh."

