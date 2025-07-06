@echo off
setlocal EnableDelayedExpansion
cd C:\
cls

:: Generate unique GUIDs using PowerShell
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID1=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID2=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID3=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID4=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID5=%%i

:: OS strings
set OS1=Windows 11 Pro
set OS2=Ubuntu 22.04
set OS3=Fedora 40
set OS4=Debian 12
set OS5=Arch Linux
set OS6=RHEL 9
set OS7=FreeBSD 14
set OS8=Kali Linux

:: Run solution.exe with 100% unique GUIDs
solution.exe /SU AUTO
solution.exe /SF "System Firmware v!GUID1!"
solution.exe /SF "Firmware Build !GUID2!"
solution.exe /SP "!GUID3!"
solution.exe /SV "1.0"
solution.exe /SS "SN-!GUID1!"
solution.exe /SK "SKU-!GUID2!"
solution.exe /SM "MB-!GUID3!"
solution.exe /SCO 1 "OEM String !GUID4!"
solution.exe /CS "ASUS Custom Build !GUID1!"
solution.exe /CA "ASUSTek Computers !GUID2!"
solution.exe /CSK "KEY-!GUID5!"
solution.exe /CM "Board Model !GUID3!"
solution.exe /CT "03h"
solution.exe /CV "1.0"
solution.exe /CO "CO-!GUID4!"
solution.exe /CS "System Config !GUID5!"
solution.exe /PSN "PSN-!GUID1!"
solution.exe /PAT "PAT-!GUID2!"
solution.exe /PPN "PPN-!GUID3!"
solution.exe /OS 1 "!OS1!"
solution.exe /OS 2 "!OS2!"
solution.exe /OS 3 "!OS3!"
solution.exe /OS 4 "!OS4!"
solution.exe /OS 5 "!OS5!"
solution.exe /OS 6 "!OS6!"
solution.exe /OS 7 "!OS7!"
solution.exe /OS 8 "!OS8!"
solution.exe /IVN "ASUS International, LLC."
solution.exe /IV "3.80"
solution.exe /ID "04/13/2021"
solution.exe /BLC "BLC-!GUID1!"
solution.exe /BLCH 2 "BLCH-!GUID2!"
solution.exe /BS "BS-!GUID3!"
solution.exe /BM "BM-!GUID4!"
solution.exe /BP "BP-!GUID5!"
solution.exe /BV "1.0"
solution.exe /BT "UEFI Bootloader"
solution.exe /BLC "Default string"

:: Restart WMI service
net stop winmgmt /y
C:\Windows\system32\net1 stop winmgmt /y

net start winmgmt /y
C:\Windows\system32\net1 start winmgmt /y

cls
endlocal
