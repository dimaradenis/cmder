@echo off
SET CMDER_ROOT=%~dp0

:: Remove Trailing '\'
@if "%CMDER_ROOT:~-1%" == "\" SET CMDER_ROOT=%CMDER_ROOT:~0,-1%

if not exist "%CMDER_ROOT%\config\user_ConEmu.xml" (
  copy "%CMDER_ROOT%\vendor\ConEmu.xml.default" "%CMDER_ROOT%\config\user_ConEmu.xml"
)

if exist "%~1" (
    start %~dp0/vendor/conemu-maximus5/ConEmu.exe /Icon "%CMDER_ROOT%\icons\cmder.ico" /Title Cmder /LoadCfgFile "%~1"
) else (
    start %~dp0/vendor/conemu-maximus5/ConEmu.exe /Icon "%CMDER_ROOT%\icons\cmder.ico" /Title Cmder /LoadCfgFile "%CMDER_ROOT%\config\user_ConEmu.xml"
)
