@echo off

if "%RPATH_ALREADY_ADDED%" == "1" goto :already_set

for /r "c:\Program Files\R" %%F in (*Rscript.exe*) do (
  REM echo "%%~fF"
  set filename=%%~fF
  set filepath=%%~dpF
  REM echo "Name [%filename%] Path [%filepath%]"
  if not "%filepath%" == "" goto :set_path
  REM goto :eof
)

REM echo No Rscript.exe found. Maybe you need to install R.
REM pause

:set_path
echo Adding '%filepath%' to PATH
set PATH=%filepath%;%PATH%
set RPATH_ALREADY_ADDED=1
REM R --version
Rscript --version
REM pause
goto :eof


:already_set
echo "Path to R executables already added!"