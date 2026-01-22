module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 5, 2, 8, 1, 9, 3 ]
names = [ "Charlie", "Alice", "Bob" ]

sortedNums = List.sort numbers |> List.map String.fromInt |> String.join ","
sortedNames = List.sort names |> String.join ","

result = "Numbers: [" ++ sortedNums ++ "] Names: [" ++ sortedNames ++ "]"

main : Html a
main =
    span [ class "result" ] [ text result ]
