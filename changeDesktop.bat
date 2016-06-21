@echo off

set argc=0
for %%x in (%*) do Set /A argc+=1

IF %argc% LSS 2 goto end

set key="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
reg add %key% /f 
reg add %key% /f /v Wallpaper /t REG_SZ /d %1
reg add %key% /f /v WallpaperStyle /t REG_SZ /d %2

echo "Done"
:end
pause