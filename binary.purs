module Main where

import Prelude (bind, mod, pure, (<$>), (<<<), (==))
import Data.List (List, (..))
import Data.Either (Either(..))

isDivisibleBy :: Int -> String -> Either String Int -> Either String Int
isDivisibleBy divider replacer value = do
  v <- value
  if mod v divider == 0
    then Left replacer
    else Right v


fizz :: Either String Int -> Either String Int
fizz = isDivisibleBy 5 "Fizz"

buzz :: Either String Int -> Either String Int
buzz = isDivisibleBy 3 "Buzz"

fizzBuzz :: Either String Int -> Either String Int
fizzBuzz = fizz <<< buzz <<< (isDivisibleBy 15 "FizzBuzz")

result :: List (Either String Int)
result = fizzBuzz <<< pure <$> (1 .. 100)
