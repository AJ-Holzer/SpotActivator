@echo off

powershell -Command "Invoke-WebRequest -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | Invoke-Expression" 2> error.txt
if %errorlevel% neq 0 goto error1

powershell -Command "Invoke-WebRequest -useb https://raw.githubusercontent.com/spicetify/marketplace/main/resources/install.ps1 | Invoke-Expression" 2> error.txt
if %errorlevel% neq 0 goto error2

goto end

:error1
echo An error occurred in the first command:
type error.txt
pause
goto end

:error2
echo An error occurred in the second command:
type error.txt
pause
goto end

:end