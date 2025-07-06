@echo off
setlocal EnableDelayedExpansion
cd C:\
cls

:: Set the path to solution.exe
set SOL=C:\Program Files (x86)\Steam\solution.exe

:: Generate unique GUIDs
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID1=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID2=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID3=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID4=%%i
for /f %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set GUID5=%%i

:: OS names
set OS1=Windows 11 Pro
set OS2=Ubuntu 22.04
set OS3=Fedora 40
set OS4=Debian 12
set OS5=Arch Linux
set OS6=RHEL 9
set OS7=FreeBSD 14
set OS8=Kali Linux

:: Call solution.exe using full path
"%SOL%" /SU AUTO
"%SOL%" /SF "System Firmware v!GUID1!"
"%SOL%" /SF "Firmware Build !GUID2!"
"%SOL%" /SP "!GUID3!"
"%SOL%" /SV "1.0"
"%SOL%" /SS "SN-!GUID1!"
"%SOL%" /SK "SKU-!GUID2!"
"%SOL%" /SM "MB-!GUID3!"
"%SOL%" /SCO 1 "OEM String !GUID4!"
"%SOL%" /CS "ASUS Custom Build !GUID1!"
"%SOL%" /CA "ASUSTek Computers !GUID2!"
"%SOL%" /CSK "KEY-!GUID5!"
"%SOL%" /CM "Board Model !GUID3!"
"%SOL%" /CT "03h"
"%SOL%" /CV "1.0"
"%SOL%" /CO "CO-!GUID4!"
"%SOL%" /CS "System Config !GUID5!"
"%SOL%" /PSN "PSN-!GUID1!"
"%SOL%" /PAT "PAT-!GUID2!"
"%SOL%" /PPN "PPN-!GUID3!"
"%SOL%" /OS 1 "!OS1!"
"%SOL%" /OS 2 "!OS2!"
"%SOL%" /OS 3 "!OS3!"
"%SOL%" /OS 4 "!OS4!"
"%SOL%" /OS 5 "!OS5!"
"%SOL%" /OS 6 "!OS6!"
"%SOL%" /OS 7 "!OS7!"
"%SOL%" /OS 8 "!OS8!"
"%SOL%" /IVN "ASUS International, LLC."
"%SOL%" /IV "3.80"
"%SOL%" /ID "04/13/2021"
"%SOL%" /BLC "BLC-!GUID1!"
"%SOL%" /BLCH 2 "BLCH-!GUID2!"
"%SOL%" /BS "BS-!GUID3!"
"%SOL%" /BM "BM-!GUID4!"
"%SOL%" /BP "BP-!GUID5!"
"%SOL%" /BV "1.0"
"%SOL%" /BT "UEFI Bootloader"
"%SOL%" /BLC "Default string"

:: Restart WMI service
net stop winmgmt /y
C:\Windows\system32\net1 stop winmgmt /y

net start winmgmt /y
C:\Windows\system32\net1 start winmgmt /y

cls
endlocal
