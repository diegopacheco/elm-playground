module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

charInfo c =
    let
        code = Char.toCode c
        upper = Char.toUpper c
    in
    String.fromChar c ++ " -> code:" ++ String.fromInt code ++ " upper:" ++ String.fromChar upper

result = charInfo 'a' ++ " | " ++ charInfo 'z'

main : Html a
main =
    span [ class "result" ] [ text result ]
