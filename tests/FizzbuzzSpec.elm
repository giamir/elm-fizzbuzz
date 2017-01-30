module FizzbuzzSpec exposing (..)

import Fizzbuzz exposing (..)
import Test exposing (..)
import Expect


all : Test
all =
    describe "Fizzbuzz"
        [ test "it should do something" <|
            \() ->
                1
                    |> fizzbuzz
                    |> Expect.equal "do something"
        ]
