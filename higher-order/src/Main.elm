module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

applyTwice : (a -> a) -> a -> a
applyTwice f x = f (f x)

double n = n * 2
addTen n = n + 10

result = String.fromInt (applyTwice double 5) ++ ", " ++ String.fromInt (applyTwice addTen 3)

main : Html a
main =
    span [ class "result" ] [ text ("ApplyTwice: " ++ result) ]
