port module Main exposing (..)

import FizzbuzzSpec
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit FizzbuzzSpec.all


port emit : ( String, Value ) -> Cmd msg
