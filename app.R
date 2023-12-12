options(warn=-1)
# options(warn=0)
if(!require("shinydbauth")) {
   install.packages(readLines(file("required_packages.txt", "r")), repos='http://cran.us.r-project.org')
} else {
   print("Required packages already installed!")
}

library(shiny)
library(shinydbauth)

# SETUP: choose database backend uncommenting one of the following lines
# source('db_pg.R')
source('db_sqlite.R')

source('movies.R')

ui <- my_create_ui()
ui <- secure_app(ui, language="es")
shinyApp(ui, create_server(my_custom_check_creds, my_custom_update_pwd, my_server_function))
