module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

numbers = [ 2, 4, 6, 8 ]

hasEven = List.any (\n -> modBy 2 n == 0) numbers
allEven = List.all (\n -> modBy 2 n == 0) numbers
hasOdd = List.any (\n -> modBy 2 n /= 0) numbers

show b = if b then "Yes" else "No"
result = "HasEven:" ++ show hasEven ++ " AllEven:" ++ show allEven ++ " HasOdd:" ++ show hasOdd

main : Html a
main =
    span [ class "result" ] [ text result ]
