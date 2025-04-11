@echo off
REM ===============================
REM Gaming Network Optimizer Script
REM ===============================
REM Run this script as Administrator.

echo ---------------------------------------------
echo Flushing DNS Cache...
ipconfig /flushdns

echo ---------------------------------------------
echo Releasing and Renewing IP Configuration...
ipconfig /release
ipconfig /renew

echo ---------------------------------------------
echo Adjusting TCP Settings for Reduced Latency...
REM Set the TCP Auto-Tuning Level. "normal" is generally stable.
netsh int tcp set global autotuninglevel=normal

REM Disable TCP Chimney Offload to prevent offloading issues.
netsh int tcp set global chimney=disabled

REM (Optional) Depending on your adapter, you might try enabling RSS.
netsh int tcp set global rss=enabled

REM ===============================
echo (Optional) Setting MTU on Wi-Fi Adapter...
REM Replace "Wi-Fi" with your network interface name if it differs.
REM Many gaming setups use an MTU around 1400-1472; adjust as needed.
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1400 store=persistent

echo ---------------------------------------------
echo Network optimization complete.
echo It is recommended to reboot your computer for all changes to take effect.
pause
