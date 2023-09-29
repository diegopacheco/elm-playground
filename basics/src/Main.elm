module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

greet n =
  "Hello " ++ n ++ "!"

result = greet "John Doe"

main : Html a
main =
    span [ class "welcome-message" ] [ text result ]
