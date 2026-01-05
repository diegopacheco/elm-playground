module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

greet name =
    String.toUpper <| String.concat <| [ "Hello ", name, "!" ]

result = greet "Elm"

main : Html a
main =
    span [ class "result" ] [ text result ]
