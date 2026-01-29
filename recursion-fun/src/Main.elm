module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

factorial n =
    if n <= 1 then 1 else n * factorial (n - 1)

fib n =
    if n <= 1 then n else fib (n - 1) + fib (n - 2)

result = "5! = " ++ String.fromInt (factorial 5) ++ ", fib(10) = " ++ String.fromInt (fib 10)

main : Html a
main =
    span [ class "result" ] [ text result ]
