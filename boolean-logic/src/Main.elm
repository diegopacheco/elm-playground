module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

a = True
b = False

show bool = if bool then "T" else "F"

result = "AND:" ++ show (a && b) ++ " OR:" ++ show (a || b) ++ " NOT:" ++ show (not a) ++ " XOR:" ++ show (xor a b)

main : Html a
main =
    span [ class "result" ] [ text result ]
