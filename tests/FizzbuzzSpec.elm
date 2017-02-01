module FizzbuzzSpec exposing (..)

import Fizzbuzz exposing (..)
import Test exposing (..)
import Expect


testcase : ( Int, String ) -> Test
testcase ( argument, expectedResult ) =
    test
        ("it should return "
            ++ expectedResult
            ++ " for input of "
            ++ toString argument
        )
    <|
        \() ->
            argument
                |> fizzbuzz
                |> Expect.equal expectedResult


all : Test
all =
    describe "Fizzbuzz"
        ([ ( 1, "1" )
         , ( 2, "1,2" )
         , ( 3, "1,2,Fizz" )
         , ( 5, "1,2,Fizz,4,Buzz" )
         , ( 6, "1,2,Fizz,4,Buzz,Fizz" )
         , ( 15, "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz" )
         ]
            |> List.map testcase
        )
