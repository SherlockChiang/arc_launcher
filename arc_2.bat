@echo off
:: 启动应用程序
start "" "C:\Users\vincent\AppData\Local\Microsoft\WindowsApps\TheBrowserCompany.Arc_ttt1ap7aakyb4\Arc.exe"

%1 %2
ver|find "5.">nul&&goto :Admin
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :Admin","","runas",1)(window.close)&goto :eof
:Admin

netsh interface set interface name="WLAN" admin=enable