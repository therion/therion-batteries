[Setup]
AppName=Therion
AppVerName=Therion
DefaultDirName={autopf}\Therion
DefaultGroupName=Therion
UninstallDisplayName=Therion
UninstallDisplayIcon={app}\therion.exe
ShowLanguageDialog=yes
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
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=dialog
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

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

#define proj_ver Int(ReadIni(SourcePath+'../therion.bin/innosetup.ini', 'PROJ', 'version', '0'),0)
#if proj_ver == 0
  #error Could not determine PROJ version
#elif proj_ver <= 6
  Source: _proj\proj-datumgrid\*.*; DestDir: {app}\lib\proj-{#proj_ver};
#endif
Source: _proj\proj-thgrid\*.*; DestDir: {app}\lib\proj-{#proj_ver};
Source: _proj\proj-{#proj_ver}\*.*; DestDir: {app}\lib\proj-{#proj_ver};
Source: _proj\doc\*.*; DestDir: {app}\lib\proj-{#proj_ver}\doc;

Source: ..\therion.bin\thbook\thbook.pdf; DestDir: {app}\doc
Source: ..\therion\CHANGES; DestDir: {app}\doc; Destname: CHANGES.txt
Source: ..\therion\README; DestDir: {app}\doc; Destname: README.txt
Source: ..\therion\COPYING; DestDir: {app}\doc; Destname: COPYING.txt

Source: ..\therion\loch\locale\*.mo; DestDir: {app}\locale; Flags: recursesubdirs
Source: ..\therion.bin\loch\help\*.htb; DestDir: {app}\doc\help; Flags: recursesubdirs
Source: ..\therion\loch\lochfile.ico; DestDir: {app}
Source: ..\therion.bin\loch\loch.exe; DestDir: {app}

Source: ..\therion.bin\dependencies\*.*; DestDir: {app}; Flags: skipifsourcedoesntexist

Source: ..\therion\samples\*.*; DestDir: {app}\samples; Flags: recursesubdirs

[Icons]
Name: "{group}\Loch"; Filename: {app}\loch.exe; IconFileName: {app}\loch.exe; WorkingDir: {app}\samples
Name: "{group}\XTherion"; Filename: {app}\bin\wish86.exe; Parameters: """{app}\xtherion.tcl"""; IconFileName: {app}\therion.exe; WorkingDir: {app}\samples
Name: "{group}\The Therion Book"; Filename: "{app}\thbook.pdf"
Name: "{group}\NEWS"; Filename: write.exe; Parameters: """{app}\CHANGES.txt"""
Name: "{group}\Uninstall Therion"; Filename: {uninstallexe}

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "pt_BR"; MessagesFile:"compiler:Languages\BrazilianPortuguese.isl"
Name: "bg"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "ca"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "cs"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "pt_PT"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "sk"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"

[Registry]
Root: "HKA"; Subkey: "SOFTWARE\Classes\.thconfig"; ValueType: string; ValueData: "TherionConfig"; Flags: uninsdeletevalue
Root: "HKA"; Subkey: "SOFTWARE\Classes\.th"; ValueType: string; ValueData: "TherionData"; Flags: uninsdeletevalue
Root: "HKA"; Subkey: "SOFTWARE\Classes\.th2"; ValueType: string; ValueData: "TherionScraps"; Flags: uninsdeletevalue
Root: "HKA"; Subkey: "SOFTWARE\Classes\.lox"; ValueType: string; ValueData: "LochFile"; Flags: uninsdeletevalue
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionConfig"; ValueType: string; ValueData: "Therion configuration"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionConfig\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionConfig\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86.exe"" ""{app}\xtherion.tcl"" ""%1"""
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionData"; ValueType: string; ValueData: "Therion data file"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionData\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionData\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86.exe"" ""{app}\xtherion.tcl"" ""%1"""
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionScraps"; ValueType: string; ValueData: "Therion scraps file"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionScraps\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"
Root: "HKA"; Subkey: "SOFTWARE\Classes\TherionScraps\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86.exe"" ""{app}\xtherion.tcl"" ""%1"""
Root: "HKA"; Subkey: "SOFTWARE\Classes\LochFile"; ValueType: string; ValueData: "Loch 3D file"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Classes\LochFile\DefaultIcon"; ValueType: string; ValueData: "{app}\lochfile.ico"
Root: "HKA"; Subkey: "SOFTWARE\Classes\LochFile\shell\open\command"; ValueType: string; ValueData: """{app}\loch.exe"" ""%1"""

Root: "HKA"; Subkey: "SOFTWARE\Therion"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TclTk"; ValueData: "1"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TeX"; ValueData: "3"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "ImageMagick"; ValueData: "1"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "AppCtrl"; ValueData: "1"; Flags: uninsdeletekey

[Code]

procedure DeleteBatteries;
begin
  DelTree(ExpandConstant('{app}\bin'), true, true, true);
  DelTree(ExpandConstant('{app}\lib'), true, true, true);
  DelTree(ExpandConstant('{app}\texmf'), true, true, true);
end;
