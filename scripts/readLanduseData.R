# load necessary packages
library(raster)

# read landuse data of Mato Grosso
folderDir = dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(folderDir)
setwd("..")
setwd("./data")
setwd("./landuse_mato_grosso")

imageOfYear = function(yearString) {
  fileName = paste('mt_',yearString,'_v3_1.tif', sep="")
  return (raster(fileName))
}

raster2013 = imageOfYear("2013")
