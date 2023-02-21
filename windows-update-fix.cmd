sc config trustedinstaller start=auto
net stop wuauserv
net stop bits
cd %windir%
ren SoftwareDistribution SoftwareDistribution.old
dism /online /cleanup-image /restorehealth 