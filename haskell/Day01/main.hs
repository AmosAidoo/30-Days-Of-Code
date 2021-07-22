module Main where

i :: Integer
i = 4

d = 4.0
d :: Double

s = "HackerRank "
s :: String

main = do
        first <- getLine
        second <- getLine
        third <- getLine

        putStrLn (show ((read first :: Integer) + i) )
        putStrLn (show ((read second :: Double) + d) )
        putStrLn (s ++ show third)