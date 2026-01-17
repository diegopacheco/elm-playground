module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

nested = [ [ 1, 2 ], [ 3, 4 ], [ 5 ] ]

flattened = List.concat nested
withMap = List.concatMap (\x -> [ x, x * 10 ]) [ 1, 2, 3 ]

format lst = lst |> List.map String.fromInt |> String.join ","

result = "Concat: [" ++ format flattened ++ "] ConcatMap: [" ++ format withMap ++ "]"

main : Html a
main =
    span [ class "result" ] [ text result ]
