module Main exposing (..)

import Html exposing (Html, span, text)
import Html.Attributes exposing (class)
import Random exposing (step,initialSeed)
import UUID
    exposing ( 
          UUID
        , generator
        , toRepresentation
        , toString
        , Representation(..)
        )

uuid = Random.step UUID.generator (Random.initialSeed 12345)
    |> Tuple.first
    |> UUID.toRepresentation Urn

main : Html a
main =
    span [ class "welcome-message" ] [ text uuid ]