module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

safeHead lst =
    case List.head lst of
        Just x -> "Found: " ++ x
        Nothing -> "Empty list"

result = safeHead [ "Elm", "Rocks" ] ++ " | " ++ safeHead []

main : Html a
main =
    span [ class "result" ] [ text result ]
