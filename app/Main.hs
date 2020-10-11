module Main where

import Lib
import System.Environment

main :: IO ()
main = do
  item <- getArgs
  case item of
    ["1"] -> euler1
    otherwise -> someFunc
