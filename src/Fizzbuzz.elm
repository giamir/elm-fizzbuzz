module Fizzbuzz exposing (fizzbuzz)


fizzToString : Int -> String
fizzToString number =
    case ( number % 3, number % 5 ) of
        ( 0, 0 ) ->
            "FizzBuzz"

        ( 0, _ ) ->
            "Fizz"

        ( _, 0 ) ->
            "Buzz"

        ( _, _ ) ->
            toString number


fizzbuzz : Int -> String
fizzbuzz number =
    List.range 1 number
        |> List.map fizzToString
        |> String.join ","
