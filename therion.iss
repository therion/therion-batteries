[Setup]
AppName=Therion
AppVerName=Therion
DefaultDirName={pf}\Therion
DefaultGroupName=Therion
UninstallDisplayName=Therion
UninstallDisplayIcon={app}\therion.exe
ShowLanguageDialog=no
LanguageDetectionMethod=none
;PrivilegesRequired=poweruser
AppPublisher=Stacho Mudrak, Martin Budaj
AppPublisherURL=http://therion.speleo.sk
SourceDir=.
OutputDir=..\therion.bin
SetupIconFile=..\therion\therion.ico
WizardSmallImageFile=therion.bmp
WizardImageFile=mapa.bmp
WizardImageStretch=false
AppID=therion-4.66920160910299
OutputBaseFilename=therion-setup
ChangesAssociations=true
SolidCompression=yes

[Files]

Source: ..\therion.bin\therion.exe; DestDir: {app}; BeforeInstall: DeleteBatteries
Source: ..\therion\therion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: ..\therion\therion.ini; DestDir: {app}; Destname: therion.new.ini

Source: ..\therion.bin\xtherion\xtherion.tcl; DestDir: {app}
Source: ..\therion\xtherion\xtherion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: ..\therion\xtherion\xtherion.ini; DestDir: {app}; Destname: xtherion.new.ini

Source: bin\*.*; DestDir: {app}\bin
Source: lib\*.*; DestDir: {app}\lib; Flags: recursesubdirs

Source: bin\win32\*.*; DestDir: {app}\bin\win32
Source: texmf\*.*; DestDir: {app}\texmf; Flags: recursesubdirs

Source: ..\therion.bin\thbook\thbook.pdf; DestDir: {app}
Source: ..\therion\CHANGES; DestDir: {app}; Destname: CHANGES.txt
Source: ..\therion\README; DestDir: {app}; Destname: README.txt
Source: ..\therion\COPYING; DestDir: {app}; Destname: COPYING.txt

Source: ..\therion\loch\locale\*.mo; DestDir: {app}; Flags: recursesubdirs
Source: ..\therion\loch\help\*.chm; DestDir: {app}; Flags: recursesubdirs
Source: ..\therion\loch\lochfile.ico; DestDir: {app}
Source: ..\therion.bin\loch\loch.exe; DestDir: {app}

Source: ..\therion\samples\*.*; DestDir: {app}\samples; Flags: recursesubdirs

[Icons]
Name: "{group}\ Loch"; Filename: {app}\loch.exe; IconFileName: {app}\loch.exe; WorkingDir: {app}\samples
Name: "{group}\ XTherion"; Filename: {app}\bin\wish86t.exe; Parameters: """{app}\xtherion.tcl"""; IconFileName: {app}\therion.exe; WorkingDir: {app}\samples
Name: "{group}\The Therion Book"; Filename: "{app}\thbook.pdf"
Name: "{group}\NEWS"; Filename: write.exe; Parameters: """{app}\CHANGES.txt"""
Name: {group}\Uninstall Therion; Filename: {uninstallexe}

[Registry]
Root: HKCR; Subkey: .th; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue noerror
Root: HKCR; Subkey: .th2; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue noerror
Root: HKCR; Subkey: .lox; ValueType: string; ValueName: ; ValueData: LochFile; Flags: uninsdeletevalue noerror
Root: HKCR; Subkey: TherionFile; ValueType: string; ValueName: ; ValueData: Therion data file; Flags: uninsdeletekey noerror
Root: HKCR; Subkey: TherionFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\therion.exe,0; Flags: noerror
Root: HKCR; Subkey: TherionFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Flags: noerror
Root: HKCR; Subkey: LochFile; ValueType: string; ValueName: ; ValueData: Loch 3D file; Flags: uninsdeletekey noerror
Root: HKCR; Subkey: LochFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\lochfile.ico; Flags: noerror
Root: HKCR; Subkey: LochFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\loch.exe"" ""%1"""; Flags: noerror

Root: HKCU; Subkey: SOFTWARE\Classes\.th; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue
Root: HKCU; Subkey: SOFTWARE\Classes\.th2; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue
Root: HKCU; Subkey: SOFTWARE\Classes\.lox; ValueType: string; ValueName: ; ValueData: LochFile; Flags: uninsdeletevalue
Root: HKCU; Subkey: SOFTWARE\Classes\TherionFile; ValueType: string; ValueName: ; ValueData: Therion data file; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Classes\TherionFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\therion.exe,0
Root: HKCU; Subkey: SOFTWARE\Classes\TherionFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""
Root: HKCU; Subkey: SOFTWARE\Classes\LochFile; ValueType: string; ValueName: ; ValueData: Loch 3D file; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Classes\LochFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\lochfile.ico
Root: HKCU; Subkey: SOFTWARE\Classes\LochFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\loch.exe"" ""%1"""

Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: string; ValueName: InstallDir; ValueData: {app}; Flags: uninsdeletekey noerror
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TclTk; ValueData: 1; Flags: uninsdeletekey noerror
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TeX; ValueData: 3; Flags: uninsdeletekey noerror
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: ImageMagick; ValueData: 1; Flags: uninsdeletekey noerror
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: AppCtrl; ValueData: 1; Flags: uninsdeletekey noerror

Root: HKCU; Subkey: SOFTWARE\Therion; ValueType: string; ValueName: InstallDir; ValueData: {app}; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TclTk; ValueData: 1; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TeX; ValueData: 3; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: ImageMagick; ValueData: 1; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: AppCtrl; ValueData: 1; Flags: uninsdeletekey

[Code]
procedure DeleteBatteries;
begin
DelTree(ExpandConstant('{app}\bin'), true, true, true);
DelTree(ExpandConstant('{app}\lib'), true, true, true);
DelTree(ExpandConstant('{app}\texmf'), true, true, true);
end;
