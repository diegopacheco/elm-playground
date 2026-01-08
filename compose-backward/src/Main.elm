module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

stringify = String.fromInt
triple = (*) 3
process = stringify << triple << (+) 1

result = process 10

main : Html a
main =
    span [ class "result" ] [ text ("Backward: " ++ result) ]
