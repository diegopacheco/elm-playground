module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

describe n =
    case n of
        0 -> "Zero"
        1 -> "One"
        2 -> "Two"
        _ -> "Many"

result = describe 1 ++ ", " ++ describe 5

main : Html a
main =
    span [ class "result" ] [ text result ]
