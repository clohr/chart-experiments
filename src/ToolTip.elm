module ToolTip exposing (main)

import Html
import Html.Attributes
import LineChart as LineChart
import LineChart.Junk as Junk exposing (..)
import LineChart.Dots as Dots
import LineChart.Colors as Colors
import LineChart.Container as Container
import LineChart.Junk as Junk
import LineChart.Interpolation as Interpolation
import LineChart.Axis.Intersection as Intersection
import LineChart.Axis as Axis
import LineChart.Legends as Legends
import LineChart.Line as Line
import LineChart.Events as Events
import LineChart.Grid as Grid
import LineChart.Legends as Legends
import LineChart.Area as Area


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    { hovered : List Info }


init : Model
init =
    { hovered = [] }



-- UPDATE


type Msg
    = Hover (List Info)


update : Msg -> Model -> Model
update msg model =
    case msg of
        Hover hovered ->
            { model | hovered = hovered }



-- VIEW


view : Model -> Html.Html Msg
view model =
    Html.div
        [ Html.Attributes.style [ ( "font-family", "monospace" ) ] ]
        [ chart model ]


chart : Model -> Html.Html Msg
chart model =
    LineChart.viewCustom
        { y = Axis.default 450 "Income" .income
        , x = Axis.default 700 "Age" .age
        , container = Container.styled "line-chart" [ ( "font-family", "monospace" ) ]
        , interpolation = Interpolation.default
        , intersection = Intersection.default
        , legends = Legends.byEnding (Junk.label Colors.black)
        , events = Events.hoverMany Hover
        , junk =
            Junk.hoverMany model.hovered formatX formatY
        , grid = Grid.default
        , area = Area.default
        , line = Line.default
        , dots = Dots.hoverMany model.hovered
        }
        [ LineChart.line Colors.purple Dots.diamond "Alice" alice
        , LineChart.line Colors.cyan Dots.circle "Bobby" bobby
        , LineChart.line Colors.pink Dots.triangle "Chuck" chuck
        ]


formatX : Info -> String
formatX info =
    "Age: " ++ toString info.age


formatY : Info -> String
formatY info =
    "$" ++ toString info.income



-- DATA


type alias Info =
    { age : Float
    , weight : Float
    , height : Float
    , income : Float
    }


alice : List Info
alice =
    [ Info 10 34 1.34 0
    , Info 15 42 1.62 3000
    , Info 25 75 1.73 55000
    , Info 35 75 1.73 75000
    , Info 45 83 1.75 115000
    ]


bobby : List Info
bobby =
    [ Info 10 38 1.32 0
    , Info 15 69 1.75 2000
    , Info 25 75 1.87 32000
    , Info 35 75 1.87 48000
    , Info 45 77 1.87 62000
    ]


chuck : List Info
chuck =
    [ Info 10 42 1.35 0
    , Info 15 72 1.72 1800
    , Info 25 89 1.83 65000
    , Info 35 75 1.87 78000
    , Info 45 95 1.84 98000
    ]
