module Fizzbuzz exposing (..)


fizzbuzz : Int -> String
fizzbuzz number =
    if number % 15 == 0 then
        "fizzbuzz"
    else if number % 3 == 0 then
        "fizz"
    else if number % 5 == 0 then
        "buzz"
    else
        toString number
