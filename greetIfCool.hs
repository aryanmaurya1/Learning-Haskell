module GreetIfCool where

greetIfCool :: String -> IO()
greetIfCool coolness = 
            if cool then
                putStrLn "I am Cool !"
            else
                putStrLn "I am Hot !"
            where
                cool = (coolness == "Ice")

greetIfCool2 :: String -> IO()
greetIfCool2 coolness = 
            if cool coolness then
                putStrLn "I am Cool !"
            else
                putStrLn "I am Hot !"
            where cool v = (v == "Ice")
