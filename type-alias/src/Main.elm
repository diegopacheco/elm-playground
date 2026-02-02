module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

type alias Person = { name : String, age : Int }

greet : Person -> String
greet p = p.name ++ " is " ++ String.fromInt p.age ++ " years old"

john = Person "John" 30
result = greet john

main : Html a
main =
    span [ class "result" ] [ text result ]
