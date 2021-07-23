module Main where
import Control.Monad

getEven :: String -> String
getEven str = [ str !! i | i <- [0..(length str)-1], (even i)]

getOdd :: String -> String
getOdd str = [ str !! i | i <- [0..(length str)-1], (odd i)]

main = do
    nInput <- getLine
    let n = read nInput :: Int
    results <- forM [1..n] (\a -> do
        str <- getLine
        return $ (getEven str) ++ " " ++  (getOdd str))
    mapM_ putStrLn results