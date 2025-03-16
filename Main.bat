@echo off
echo WARNING: This will uninstall all Python packages installed via pip in the current environment.
pause
echo Creating a list of installed packages...
pip freeze > temp_packages.txt
echo Uninstalling all packages...
for /f "delims==" %%i in (temp_packages.txt) do pip uninstall -y "%%i"
echo Cleaning up...
del temp_packages.txt
echo Done.
pause
