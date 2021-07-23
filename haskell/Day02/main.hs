{-# LANGUAGE DuplicateRecordFields, FlexibleInstances, UndecidableInstances #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Data.Text
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

--
-- Complete the 'solve' function below.
--
-- The function accepts following parameters:
--  1. DOUBLE meal_cost
--  2. INTEGER tip_percent
--  3. INTEGER tax_percent
--

fi = fromIntegral

solve meal_cost tip_percent tax_percent = do
    -- Write your code here
    
    let res = round ( meal_cost + ( meal_cost * (fi tip_percent/100) ) + ( meal_cost *  (fi tax_percent /100) ) )
    putStrLn $ (show res)

lstrip = Data.Text.unpack . Data.Text.stripStart . Data.Text.pack
rstrip = Data.Text.unpack . Data.Text.stripEnd . Data.Text.pack

main :: IO()
main = do
    meal_costTemp <- getLine
    let meal_cost = read $ lstrip $ rstrip meal_costTemp :: Double

    tip_percentTemp <- getLine
    let tip_percent = read $ lstrip $ rstrip tip_percentTemp :: Int

    tax_percentTemp <- getLine
    let tax_percent = read $ lstrip $ rstrip tax_percentTemp :: Int

    solve meal_cost tip_percent tax_percent