module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 1, 2, 3, 4, 5 ]

doubled = List.map (\x -> x * 2) numbers

result = doubled |> List.map String.fromInt |> String.join ", "

main : Html a
main =
    span [ class "result" ] [ text ("Lambda: " ++ result) ]
