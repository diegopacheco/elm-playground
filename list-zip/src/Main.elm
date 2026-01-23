module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

names = [ "Alice", "Bob", "Carol" ]
ages = [ 25, 30, 35 ]

zipped = List.map2 (\n a -> n ++ ":" ++ String.fromInt a) names ages

result = String.join ", " zipped

main : Html a
main =
    span [ class "result" ] [ text ("Zipped: " ++ result) ]
