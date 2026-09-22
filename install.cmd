@echo off
rem One-click local install: copies this folder into VS Code's extensions dir
set DEST=%USERPROFILE%\.vscode\extensions\fluent11-dark-1.1.0
echo Installing Fluent 11 Dark to %DEST%
xcopy /E /I /Y "%~dp0." "%DEST%" >nul
echo Done. Restart VS Code, then:
echo   Ctrl+K Ctrl+T          - pick "Fluent 11 Dark"
echo   File ^> Preferences ^> Theme ^> File Icon Theme - pick "Fluent 11 Icons"
echo.
echo IMPORTANT: this installer only copies files.
echo Read README.md - the rounded corners and acrylic need the
echo "Custom CSS and JS Loader" extension plus settings.json entries.
echo Installed to: %DEST%
pause
