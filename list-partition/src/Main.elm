module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ]

partitioned = List.partition (\n -> modBy 2 n == 0) numbers

format lst = lst |> List.map String.fromInt |> String.join ","
result = "Evens: [" ++ format (Tuple.first partitioned) ++ "] Odds: [" ++ format (Tuple.second partitioned) ++ "]"

main : Html a
main =
    span [ class "result" ] [ text result ]
