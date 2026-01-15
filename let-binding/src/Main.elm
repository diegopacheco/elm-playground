module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

calculate x =
    let
        doubled = x * 2
        squared = doubled * doubled
    in
    String.fromInt squared

result = calculate 3

main : Html a
main =
    span [ class "result" ] [ text ("Let result: " ++ result) ]
