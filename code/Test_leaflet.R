getwd()

library(readxl)
library(leaflet)

Coord <- read_xlsx("Coordinates.xlsx",
                   sheet = "Sheet1")

leaflet() %>%
  addTiles() %>%
addMarkers(data = Coord,
           lng = ~longitude,
           lat = ~latitude,
           popup = ~station
           )
