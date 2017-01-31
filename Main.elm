module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Fizzbuzz exposing (..)


-- MODEL


type alias Model =
    { list : List String
    , counter : Int
    }


initModel : Model
initModel =
    { list = []
    , counter = 1
    }



-- UPDATE


type Msg
    = Play
    | Reset


update : Msg -> Model -> Model
update msg model =
    case msg of
        Play ->
            { list = model.list ++ [ fizzbuzz model.counter ]
            , counter = model.counter + 1
            }

        Reset ->
            initModel



-- VIEW


withStyle : Html msg -> Html msg
withStyle html =
    div []
        [ node "style"
            [ type_ "text/css" ]
            [ text "@import url(../style.css)" ]
        , html
        ]


view : Model -> Html Msg
view model =
    div
        []
        [ h1 []
            [ text "Fizzbuzz in Elm" ]
        , button
            [ type_ "button"
            , onClick Play
            ]
            [ text "Play" ]
        , button
            [ type_ "button"
            , onClick Reset
            ]
            [ text "Reset" ]
        , ul []
            (List.map (\l -> li [] [ text l ]) model.list)
        ]
        |> withStyle


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
