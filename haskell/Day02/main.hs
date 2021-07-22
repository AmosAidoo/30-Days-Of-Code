module Main where

solve :: Int -> String
solve n
    | (odd n) || ((even n) && (n `elem` [6..20])) = "Weird"
    | ((even n) && (n `elem` [2..5])) || ((even n) && (n > 20)) = "Not Weird"

main :: IO()
main = do
    input <- getLine
    let n = read input :: Int
    putStrLn $ solve n