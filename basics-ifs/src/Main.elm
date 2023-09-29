module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

greet n =
  if n == "John" then
    "Hello " ++ n ++ " Doe !!!"
  else 
    "Hoody " ++ n ++ "!"

result = greet "John"

main : Html a
main =
    span [ class "welcome-message" ] [ text result ]
