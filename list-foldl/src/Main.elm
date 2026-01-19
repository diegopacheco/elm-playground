module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 1, 2, 3, 4, 5 ]

sum = List.foldl (+) 0 numbers
product = List.foldl (*) 1 numbers

result = "Sum: " ++ String.fromInt sum ++ ", Product: " ++ String.fromInt product

main : Html a
main =
    span [ class "result" ] [ text result ]
