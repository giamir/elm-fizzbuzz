import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Fizzbuzz exposing (..)
import String exposing (toInt)

main =
  Html.beginnerProgram { model = initModel, view = view, update = update }

-- MODEL

type alias Model = { 
    outputValue : String
    , inputValue : Int
    }

initModel : Model
initModel = { 
        outputValue = ""
    , inputValue = 0
    }



-- UPDATE

type Msg = Reset | FizzBuzz | Save String 

update : Msg -> Model -> Model
update msg model =
  case msg of
    Reset -> initModel
    Save itemCount -> { outputValue = model.outputValue, inputValue = (String.toInt itemCount) }
    FizzBuzz -> { outputValue = fizzbuzz model.inputValue, inputValue = model.inputValue }

-- VIEW

view : Model -> Html Msg
view model = div [] [ 
    text "Hello World" 
    , input [ attribute "type" "number", onInput Save ] []
    , button [ onClick Reset ] [ text "Reset" ]
    , button [ onClick FizzBuzz  ] [ text "Fizzbuzz!"]
    , text model.outputValue
    ] 
  