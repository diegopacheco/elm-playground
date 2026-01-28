module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

type alias User = { name : String, score : Int }

john = { name = "John", score = 100 }
updated = { john | score = john.score + 50 }

result = updated.name ++ " has score: " ++ String.fromInt updated.score

main : Html a
main =
    span [ class "result" ] [ text result ]
