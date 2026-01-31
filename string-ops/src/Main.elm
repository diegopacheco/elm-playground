module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

input = "  Elm Lang  "

processed =
    input
        |> String.trim
        |> String.toUpper
        |> String.split " "
        |> String.join "-"

main : Html a
main =
    span [ class "result" ] [ text ("Processed: " ++ processed) ]
