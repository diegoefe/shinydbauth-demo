# Download demo data
file <- "https://github.com/rstudio-education/shiny-course/raw/main/movies.RData"
destfile <- "../movies.RData"
if (.Platform$OS.type == "windows") {
   destfile <- "..\\movies.RData"
}
download.file(file, destfile)
print(paste0("Se ha descargado '", destfile, "'"))