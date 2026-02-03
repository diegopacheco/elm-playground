module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)

type Status = Loading | Success String | Failure

showStatus s =
    case s of
        Loading -> "Loading..."
        Success msg -> "OK: " ++ msg
        Failure -> "Failed!"

result = showStatus Loading ++ " | " ++ showStatus (Success "Done")

main : Html a
main =
    span [ class "result" ] [ text result ]
