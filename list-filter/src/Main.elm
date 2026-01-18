module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

evens = List.filter (\n -> modBy 2 n == 0) numbers

result = evens |> List.map String.fromInt |> String.join ", "

main : Html a
main =
    span [ class "result" ] [ text ("Evens: " ++ result) ]
