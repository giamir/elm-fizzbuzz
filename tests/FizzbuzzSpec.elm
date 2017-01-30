module FizzbuzzSpec exposing (..)

import Fizzbuzz exposing (..)
import Test exposing (..)
import Expect


all : Test
all =
    describe "Fizzbuzz"
        [ test "it should returns fizz when I pass 3 as argument" <|
            \() ->
                1
                    |> fizzbuzz
                    |> Expect.equal "fizz"
        , test "it should returns buzz when I pass 5 as argument" <|
            \() ->
                5
                    |> fizzbuzz
                    |> Expect.equal "buzz"
        , test "it should returns fizzbuzz when I pass 15 as argument" <|
            \() ->
                15
                    |> fizzbuzz
                    |> Expect.equal "fizzbuzz"
        , test "it should returns 2 as a string when I pass 2 as argument" <|
            \() ->
                2
                    |> fizzbuzz
                    |> Expect.equal "2"
        ]
