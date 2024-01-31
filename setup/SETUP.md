### Setup

1. Open a terminal and cd into this folder:
    - In Linux/MacOS/*nix: open bash terminal
        ```
        cd /folder/this/folder/is/in
        ```
    - Windows: Run/cmd.exe
        ```
        cd folder\this\folder\is\in
        ```
1. **Windows only**: check for R/Rscript in %PATH%
    ```
    Rscript --version
    ```
    If not found, run:
    ```
    set_r_path.cmd
    ```
    It should print the version of found Rscript, if not find this folder open **Rstudio** and type this in the console window:
    ```
    file.path(R.home("bin"), "")
    ```
    Copy the printed path and add it to the %PATH% environmental variable.
    (TODO add procedure to do this).<br />
    Then **open another terminal** into this folder and re-run:
    ```
    Rscript --version
    ```
    It should print the requested version.

1. Run setup_data.R to download demo data:
    ```
    Rscript setup_data.R
    ```
1. Choose database backend to use:
    1. For SQLite:
        1. Create test database:
            ```
            Rscript setup_sqlite.R
            ```
        1. Users and passwords:
            - gman/gman1
            - vari/varin
            - diegoefe/Pepe12
            - utgnac/pepe12
            - pepedoce/pepe12
            - utgchaco/utg1
    1. For PostgreSQL:
        1. Create a database and two functions:
            - fetch_user()
            - update_user()
           Use the signatures for **db_pg.R**'s queries
        1. Copy **sample-auth.R** to **auth.R** and set it up with correct values:
            ```bash
            cp sample-auth.R auth.R
            vim auth.R
            ```
1. Change to the parent directory:
    ```
    cd ..
    ```
1. Open **app.R** and follow SETUP instructions
1. Run the demo:
    - In windows:
        ```
        launch_in_browser.cmd
        ```
    - In Linux/MacOS/*nix:
        ```bash
        ./launch_in_browser.sh
        ```
