@echo off
set /p backgroundDir=Enter backgroundDefault.jpg folder directory:
cd "%backgroundDir%"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /f /v "OEMBackground" /t REG_DWORD /d "1"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" 
md C:\Windows\System32\oobe\info
md C:\Windows\System32\oobe\info\backgrounds
::del "C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg"
echo author: joe@chiang.com.tw

xcopy "%cd%\backgroundDefault.jpg" "C:\Windows\System32\oobe\info\backgrounds"


