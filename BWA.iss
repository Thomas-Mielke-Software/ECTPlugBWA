; Dieses Setup-Script läuft mit der Version 6.1 von Inno Setup
; --> http://www.innosetup.com

[Setup]
AppName=ECT BWA Plugin
AppVerName=ECT BWA Plugin v1.7
DiskSpanning=no
AppPublisher=M. Jahnke / T. Mielke
AppPublisherURL=http://www.easyct.de
AppSupportURL=http://www.easyct.de
AppUpdatesURL=http://www.easyct.de
DefaultDirName={commonpf}\EasyCash&Tax\Plugins\ECTPlugBWA  
UsePreviousAppDir=yes
DefaultGroupName=EasyCash
OutputBaseFilename=ECTPlugBWA
OutputDir=.\Setup
; Inno Setup 6 setzt standardmäßig MinVersion=6.1sp1 voraus. Wine/CrossOver (z. B. PortJump unter macOS)
; meldet Windows 7 teils ohne Service Pack, was zu "benötigt Windows Service Pack 1 oder höher" führt.
; Wie im Haupt-Setup von EasyCash&Tax (easycash.iss) daher nur Windows 7 ohne SP-Prüfung verlangen.
MinVersion=6.1
SignTool=winsdk10sha256
;Menu -> Tools -> Configure Sign Tool...
;winsdk81sha1: "C:\Program Files (x86)\Windows Kits\8.1\bin\x86\signtool.exe" sign /p mysecretpw /f C:\My\Path\To\cert.p12 /t http://timestamp.comodoca.com $f
;winsdk81sha256:  "C:\Program Files (x86)\Windows Kits\8.1\bin\x86\signtool.exe" sign /p mysecretpw /f C:\My\Path\To\cert.p12 /tr http://timestamp.comodoca.com /fd sha256 /td sha256 /as $f

[Languages]
Name: de; MessagesFile: compiler:Languages\German.isl

[Files]
Source: ".\BWA.htm"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\button.gif"; DestDir: "{app}"; Flags: ignoreversion

[Registry]
Root: HKLM; Subkey: "Software\Tools"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Aufruf"; ValueData: "file:///{app}\BWA.htm?$$ID$$"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Beschreibung"; ValueData: "Betriebswirtschaftliche Auswertung (BWA) von M. Jahnke"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Bitmap"; ValueData: "{app}\button.gif"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Name"; ValueData: "BWA"
