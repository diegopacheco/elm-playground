module Main exposing (..)

import Html exposing (Html, span, text, li, ul)
import Html.Attributes exposing (class)

best =
  ["Picanha", "Farora", "Guarana"]

renderList : List String -> Html msg
renderList lst =
    lst
       |> List.map (li [] << List.singleton << text)
       |> ul []

result = renderList best

main : Html a
main =
    span [ class "welcome-message" ] [ result ]
