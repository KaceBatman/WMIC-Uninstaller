@echo OFF
SETLOCAL ENABLEEXTENSIONS
Echo [Please provide the name of the Software you want to uninstall]
SET /P SoftwareName=

Echo Software Name: %SoftwareName%

wmic product where "name like '%SoftwareName%'" get name,IdentifyingNumber /format:table





REM: Trying to figure out a Code to take the value of Identyfying Number . Then store that value in ID






echo Uninstalling %SoftwareName%
start /wait MsiExec.exe /X{%ID%} /qn /norestart

rem Abort possible ShutDown..
echo  - Aborting possible shutdown
"%windir%\system32\shutdown.exe" /a


echo Done.
ENDLOCAL
exit /b 0
