module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


list : List Float
list =
    [ 3.1, -9, 7 ]


estadoCalif : Float -> GradeStatus
estadoCalif cal =
    if cal >= 7 then
        Approved

    else if cal < 0 then
        Pending

    else
        Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade lista =
    List.map estadoCalif lista


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


listaAvion : List AirplaneStatus
listaAvion =
    [ OnTime, Boarding, Delayed, Cancelled ]


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Delayed ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction lista =
    List.map airplaneScheduleAction lista
