@echo off

cd C:
cls

solution.exe /SU AUTO
solution.exe /SF "Default string"
solution.exe /SF "To be filled by O.E.M."
solution.exe /SP "%RANDOM%"
solution.exe /SV "1.0"
solution.exe /SS "%RANDOM%%RANDOM%"
solution.exe /SK "SKU"
solution.exe /SM "EERO-%RANDOM%%RANDOM%"
solution.exe /SCO 1 "Default String"
solution.exe /CS "Default string"
solution.exe /CA "Default string"
solution.exe /CSK "Default string"
solution.exe /CM "Default string"
solution.exe /CT "03h"
solution.exe /CV "1.0"
solution.exe /CO "%RANDOM%%RANDOM%"
solution.exe /CS "Default String"
solution.exe /PSN "To Be Filled By O.E.M."
solution.exe /PAT "To Be Filled By O.E.M."
solution.exe /PPN "To Be Filled By O.E.M."
solution.exe /OS 1 "Default String"
solution.exe /OS 2 "Default String"
solution.exe /OS 3 "Default String"
solution.exe /OS 4 "Default String"
solution.exe /OS 5 "Default String"
solution.exe /OS 6 "Default String"
solution.exe /OS 7 "Default String"
solution.exe /OS 8 "Default String"
solution.exe /IVN "ASUS International, LLC."
solution.exe /IV "3.80"
solution.exe /ID "04/13/2021"
solution.exe /BLC "RANDOM%%RANDOM%"
solution.exe /BLCH 2 "%RANDOM%%RANDOM%"
solution.exe /BS "%RANDOM%%RANDOM%"
solution.exe /BM "%RANDOM%%RANDOM%"
solution.exe /BP "%RANDOM%%RANDOM%"
solution.exe /BV "1.0"
solution.exe /BT "Default string"
solution.exe /BLC "Default string"

net  start winmgmt /y
C:\Windows\system32\net1  start winmgmt /y

net  stop winmgmt /y
C:\Windows\system32\net1  stop winmgmt /y

cls