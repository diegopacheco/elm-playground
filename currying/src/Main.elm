module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

add a b c = a + b + c

addFive = add 5
addFiveTen = addFive 10

result = addFiveTen 3 |> String.fromInt

main : Html a
main =
    span [ class "result" ] [ text ("Curried: " ++ result) ]
