module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

point = ( 10, 20 )

x = Tuple.first point
y = Tuple.second point
swapped = ( y, x )

result = "(" ++ String.fromInt (Tuple.first swapped) ++ "," ++ String.fromInt (Tuple.second swapped) ++ ")"

main : Html a
main =
    span [ class "result" ] [ text ("Swapped: " ++ result) ]
