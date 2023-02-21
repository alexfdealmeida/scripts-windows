SC config wuauserv start=auto
SC config cryptsvc start=auto
SC config bits start=auto
SC config trustedinstaller start=auto

net stop wuauserv
net stop cryptSvc
net stop bits
net stop trustedinstaller

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 Catroot2.old

net start wuauserv
net start cryptSvc
net start bits
net start trustedinstaller

dism /online /cleanup-image /restorehealth

echo "Reinicie o Windows e tente executar a instalacao novamente"
echo.

pause