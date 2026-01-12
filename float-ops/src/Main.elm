module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

pi = 3.14159
radius = 5.0

area = pi * radius * radius
circumference = 2 * pi * radius

result = "Area: " ++ String.fromFloat area ++ ", Circumference: " ++ String.fromFloat circumference

main : Html a
main =
    span [ class "result" ] [ text result ]
