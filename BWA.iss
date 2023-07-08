; Dieses Setup-Script wurde mit der Version 2.0.19(b) von Inno Setup erzeugt
; --> http://www.innosetup.com

[Setup]
AppName=ECT BWA Plugin
AppVerName=ECT BWA Plugin v1.5
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
SignTool=winsdk10sha1   ; dual sign the 
SignTool=winsdk10sha256 ; installer
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
