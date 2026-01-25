module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

isEven n = modBy 2 n == 0
isDivisibleBy3 n = modBy 3 n == 0

check n = String.fromInt n ++ ":even=" ++ (if isEven n then "Y" else "N") ++ ",div3=" ++ (if isDivisibleBy3 n then "Y" else "N")

result = check 6 ++ " | " ++ check 7 ++ " | " ++ check 9

main : Html a
main =
    span [ class "result" ] [ text result ]
