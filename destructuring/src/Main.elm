module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

type alias Point = { x : Int, y : Int }

distance : Point -> Point -> Int
distance { x, y } other = abs (x - other.x) + abs (y - other.y)

pointA = Point 0 0
pointB = Point 3 4

result = "Manhattan distance: " ++ String.fromInt (distance pointA pointB)

main : Html a
main =
    span [ class "result" ] [ text result ]
