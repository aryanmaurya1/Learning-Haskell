module GlobalLocal where

globalVar :: String
globalVar = "GLOBAL VARIABLE"

function :: String -> String
function arg = globalVar ++ " "  ++ arg

functionE :: String -> String
functionE arg = function arg ++ " "  ++  arg 
