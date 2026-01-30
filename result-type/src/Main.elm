module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

divide a b =
    if b == 0 then Err "Division by zero" else Ok (a // b)

showResult r =
    case r of
        Ok v -> "Result: " ++ String.fromInt v
        Err e -> "Error: " ++ e

result = showResult (divide 10 2) ++ " | " ++ showResult (divide 5 0)

main : Html a
main =
    span [ class "result" ] [ text result ]
