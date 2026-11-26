@echo off
REM Adventskalender-Verknüpfung erstellen

REM Pfad zur HTML-Datei (liegt im gleichen Ordner wie die BAT):
set TARGET=%~dp0index.html

REM Name der Verknüpfung:
set LINKNAME=Adventskalender.lnk

REM Pfad zum Desktop:
set DESKTOP=%USERPROFILE%\Desktop

REM Verknüpfung erstellen mit PowerShell (ohne ^)
powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%DESKTOP%\%LINKNAME%'); $s.TargetPath='%TARGET%'; $s.IconLocation='%SystemRoot%\system32\shell32.dll,220'; $s.Save()"

echo Fertig! Verknüpfung liegt jetzt auf dem Desktop.
pause
