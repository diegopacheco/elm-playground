module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

process n =
    n
        |> (*) 2
        |> (+) 10
        |> String.fromInt

result = process 5

main : Html a
main =
    span [ class "result" ] [ text ("Result: " ++ result) ]
