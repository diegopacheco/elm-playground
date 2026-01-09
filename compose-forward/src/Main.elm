module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

addOne = (+) 1
double = (*) 2
transform = addOne >> double >> String.fromInt

result = transform 5

main : Html a
main =
    span [ class "result" ] [ text ("Composed: " ++ result) ]
