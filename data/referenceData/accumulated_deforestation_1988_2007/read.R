folderDir = dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(folderDir)

require(rgdal)
shape <- readOGR(dsn = ".", layer = "accumulated_deforestation_1988_2007")

require(sf)
shape <- read_sf(dsn = ".", layer = "accumulated_deforestation_1988_2007")
