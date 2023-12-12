# options(warn=-1)
options(warn=0)
if(!require("shinydbauth")) {
   install.packages(readLines(file("required_packages.txt", "r")), repos='http://cran.us.r-project.org')
} else {
   print("Required packages already installed!")
}
