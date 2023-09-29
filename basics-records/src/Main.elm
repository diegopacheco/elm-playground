module Main exposing (..)

import Html exposing (Html, span, text, li, ul)
import Html.Attributes exposing (class)

json = 
  {
    first = "John",
    last  = "Doe",
    age   = "96"
  }

list = List.map .first [json,json,json]

renderList : List String -> Html msg
renderList lst =
    lst
       |> List.map (li [] << List.singleton << text)
       |> ul []

result = renderList list

main : Html a
main =
    span [ class "welcome-message" ] [ result ]
