module Lib
    ( someFunc,
      euler1
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

{- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.-}

e1 :: Integer
e1 = sum [x | x <- [1..999], check x]
  where
    check x = ((x `mod` 3) == 0) || ((x `mod` 5) ==0)

euler1 :: IO ()
euler1 = do
  putStrLn $ show e1
