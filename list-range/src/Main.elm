module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

range1 = List.range 1 5
range2 = List.range 10 15

combined = range1 ++ range2

result = combined |> List.map String.fromInt |> String.join ", "

main : Html a
main =
    span [ class "result" ] [ text ("Range: " ++ result) ]
