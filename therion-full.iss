[Setup]
#include "common.iss"
OutputBaseFilename=therion-full
ChangesAssociations=true
SolidCompression=yes

[Files]
Source: therion-batteries\bin\win32\*.*; DestDir: {app}\bin\win32
Source: therion-batteries\texmf\*.*; DestDir: {app}\texmf; Flags: recursesubdirs

Source: therion-batteries\bin\*.*; DestDir: {app}\bin
Source: therion-batteries\lib\*.*; DestDir: {app}\lib; Flags: recursesubdirs

Source: therion\therion.exe; DestDir: {app}
Source: therion\therion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: therion\xtherion\xtherion.tcl; DestDir: {app}
Source: therion\xtherion\xtherion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: therion\thbook\thbook.pdf; DestDir: {app}
Source: therion\CHANGES; DestDir: {app}; Destname: CHANGES.txt
Source: therion\README; DestDir: {app}; Destname: README.txt
Source: therion\COPYING; DestDir: {app}; Destname: COPYING.txt

[Icons]
Name: "{group}\ XTherion"; Filename: {app}\bin\wish84.exe; Parameters: """{app}\xtherion.tcl"""; IconFileName: {app}\therion.exe; WorkingDir: "C:\"
Name: "{group}\The Therion Book"; Filename: "{app}\thbook.pdf"
Name: "{group}\NEWS"; Filename: write.exe; Parameters: """{app}\CHANGES.txt"""
Name: {group}\Uninstall Therion; Filename: {uninstallexe}

[Registry]
Root: HKCR; Subkey: .th; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue
Root: HKCR; Subkey: .th2; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue
Root: HKCR; Subkey: .thm; ValueType: string; ValueName: ; ValueData: TherionFile; Flags: uninsdeletevalue
Root: HKCR; Subkey: TherionFile; ValueType: string; ValueName: ; ValueData: Therion data file; Flags: uninsdeletekey
Root: HKCR; Subkey: TherionFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\therion.exe,0
Root: HKCR; Subkey: TherionFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\bin\wish84.exe"" ""{app}\xtherion.tcl"" ""%1""";
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: string; ValueName: InstallDir; ValueData: {app}; Flags: uninsdeletekey
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TclTk; ValueData: 1
Root: HKLM; Subkey: SOFTWARE\Therion; ValueType: dword; ValueName: TeX; ValueData: 1

