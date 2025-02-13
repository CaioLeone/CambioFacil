import Html exposing (..)
import Html.Attributes exposing(..)
import Html.Events exposing(..)
import Browser 

main =
    Browser.sandbox { init = init, update = update, view = view }
    

--MODEL 
type alias Model = 
  {valorInserido: String
   ,valorConvertido: String 
  }

init : Model
init = 
  {valorInserido = "" 
  , valorConvertido = ""
  }

--MENSAGEM
type Msg = 
  ValorInserido String
  |ValorConvertido String

--UPDATE
update: Msg -> Model -> Model
update msg model = 
  case msg of 
    ValorInserido valorInserido -> 
      { model | valorInserido = valorInserido }
    ValorConvertido valorConvertido ->
      { model | valorConvertido = valorConvertido }


--VIEW
view : Model -> Html Msg 
view model =
   div []
    [ div [] [text model.valorInserido ] []
    --, button [onClick ValorInserido] [text "ok"]
    ]