; Dieses Setup-Script wurde mit der Version 2.0.19(b) von Inno Setup erzeugt
; --> http://www.innosetup.com

[Setup]
AppName=ECT BWA Plugin
AppVerName=ECT BWA Plugin v1.2
DiskSpanning=no
AppPublisher=M. Jahnke
AppPublisherURL=http://www.easyct.de
AppSupportURL=http://www.easyct.de
AppUpdatesURL=http://www.easyct.de
DefaultDirName={pf}\EasyCash&Tax\Plugins\ECTPlugBWA  
UsePreviousAppDir=yes
DefaultGroupName=EasyCash
OutputBaseFilename=ECTPlugBWA
OutputDir=.\Setup   
SignTool=vs6 

[Languages]
Name: de; MessagesFile: compiler:Languages\German.isl

[Files]
Source: ".\BWA.htm"; DestDir: "{app}"; CopyMode: alwaysoverwrite
Source: ".\button.gif"; DestDir: "{app}"; CopyMode: alwaysoverwrite
Source: ".\BWA.iss"; DestDir: "{app}"; CopyMode: alwaysoverwrite

[Registry]
Root: HKLM; Subkey: "Software\Tools"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Aufruf"; ValueData: "file:///{app}\BWA.htm?$$ID$$"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Beschreibung"; ValueData: "Betriebswirtschaftliche Auswertung (BWA) von M. Jahnke"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Bitmap"; ValueData: "{app}\button.gif"
Root: HKLM; Subkey: "Software\Tools\EasyCash\Plugins\BWA"; ValueType: string; ValueName: "Name"; ValueData: "BWA"
