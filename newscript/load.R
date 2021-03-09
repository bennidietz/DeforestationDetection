folderDir = dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(folderDir)
library(stars)

load("croppedRefData.Rda")

subdir = IMAGE_DIR = paste(getwd(), "/L8cube", sep="")
f = paste0(subdir, "/", list.files(subdir))
(st = read_stars(f))
plot(merge(st))
plot(merge(st), breaks = "equal")

subdir = IMAGE_DIR = paste(getwd(), "/L8cube_subregion", sep="")
f = paste0(subdir, "/", list.files(subdir))
(st = read_stars(f))
plot(merge(st))
