module AboutTime exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)
import Time


testSuite =
    describe "About Time"
        [ test "time is just a Float" <|
            \() ->
                123.45
                    |> Expect.equal 123.45
        , test "a constant exists for hour" <|
            \() ->
                60 * 60 * 1000
                    |> Expect.equal (1 * Time.hour)
        , test "and minute" <|
            \() ->
                60 * 1000
                    |> Expect.equal (1 * Time.minute)
        , test "and second" <|
            \() ->
                1000
                    |> Expect.equal (1 * Time.second)
        , test "and millisecond" <|
            \() ->
                1
                    |> Expect.equal (1 * Time.millisecond)
        , test "helpers exist to convert back to Floats" <|
            \() ->
                1
                    |> Expect.equal (Time.inSeconds 1000)
        ]
