@echo off
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
if not exist "%startupFolder%\NoEdge.exe" (
copy "C:\Users\Schueler\Desktop\NoEdge.exe" "%startupFolder%"
copy "D:\NoEdge.exe" "%startupFolder%"
copy "D:\scripts\NoEdge.exe" "%startupFolder%"
copy "E:\NoEdge.exe" "%startupFolder%"
copy "E:\scripts\NoEdge.exe" "%startupFolder%"
copy "F:\NoEdge.exe" "%startupFolder%"
copy "F:\scripts\NoEdge.exe" "%startupFolder%"
copy "G:\NoEdge.exe" "%startupFolder%"
copy "G:\scripts\NoEdge.exe" "%startupFolder%"
copy "H:\NoEdge.exe" "%startupFolder%"

)

:1
tasklist /V | findstr /C:"Microsoft? Edge" >nul
if "%ERRORLEVEL%"=="0" (
    ipconfig /release
)
goto 1

pause