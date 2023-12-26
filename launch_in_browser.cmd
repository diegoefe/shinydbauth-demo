call setup\set_r_path.cmd
Rscript setup.R
R -e "shiny::runApp('.', port = 8888, launch.browser = TRUE)"

pause