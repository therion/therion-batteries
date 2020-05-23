[Setup]
AppName=Therion
AppVerName=Therion
DefaultDirName={commonpf}\Therion
DefaultGroupName=Therion
UninstallDisplayName=Therion
UninstallDisplayIcon={app}\therion.exe
ShowLanguageDialog=no
LanguageDetectionMethod=none
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
PrivilegesRequired=none

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
Name: "{code:GetIconPath}\Loch"; Filename: {app}\loch.exe; IconFileName: {app}\loch.exe; WorkingDir: {app}\samples
Name: "{code:GetIconPath}\XTherion"; Filename: {app}\bin\wish86t.exe; Parameters: """{app}\xtherion.tcl"""; IconFileName: {app}\therion.exe; WorkingDir: {app}\samples
Name: "{code:GetIconPath}\The Therion Book"; Filename: "{app}\thbook.pdf"
Name: "{code:GetIconPath}\NEWS"; Filename: write.exe; Parameters: """{app}\CHANGES.txt"""
Name: "{code:GetIconPath}\Uninstall Therion"; Filename: {uninstallexe}

[Registry]
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.thconfig"; ValueType: string; ValueData: "TherionConfig"; Flags: uninsdeletevalue; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.th"; ValueType: string; ValueData: "TherionData"; Flags: uninsdeletevalue; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.th2"; ValueType: string; ValueData: "TherionScraps"; Flags: uninsdeletevalue; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.lox"; ValueType: string; ValueData: "LochFile"; Flags: uninsdeletevalue; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionConfig"; ValueType: string; ValueData: "Therion configuration"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionConfig\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionConfig\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionData"; ValueType: string; ValueData: "Therion data file"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionData\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionData\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionScraps"; ValueType: string; ValueData: "Therion scraps file"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionScraps\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\TherionScraps\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\LochFile"; ValueType: string; ValueData: "Loch 3D file"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\LochFile\DefaultIcon"; ValueType: string; ValueData: "{app}\lochfile.ico"; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Classes\LochFile\shell\open\command"; ValueType: string; ValueData: """{app}\loch.exe"" ""%1"""; Check: InstallForAll

Root: "HKLM"; Subkey: "SOFTWARE\Therion"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TclTk"; ValueData: "1"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TeX"; ValueData: "3"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "ImageMagick"; ValueData: "1"; Flags: uninsdeletekey; Check: InstallForAll
Root: "HKLM"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "AppCtrl"; ValueData: "1"; Flags: uninsdeletekey; Check: InstallForAll

Root: "HKCU"; Subkey: "SOFTWARE\Classes\.thconfig"; ValueType: string; ValueData: "TherionConfig"; Flags: uninsdeletevalue; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\.th"; ValueType: string; ValueData: "TherionData"; Flags: uninsdeletevalue; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\.th2"; ValueType: string; ValueData: "TherionScraps"; Flags: uninsdeletevalue; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\.lox"; ValueType: string; ValueData: "LochFile"; Flags: uninsdeletevalue; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionConfig"; ValueType: string; ValueData: "Therion configuration"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionConfig\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionConfig\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionData"; ValueType: string; ValueData: "Therion data file"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionData\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionData\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionScraps"; ValueType: string; ValueData: "Therion scraps file"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionScraps\DefaultIcon"; ValueType: string; ValueData: "{app}\therion.exe,0"; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\TherionScraps\shell\open\command"; ValueType: string; ValueData: """{app}\bin\wish86t.exe"" ""{app}\xtherion.tcl"" ""%1"""; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\LochFile"; ValueType: string; ValueData: "Loch 3D file"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\LochFile\DefaultIcon"; ValueType: string; ValueData: "{app}\lochfile.ico"; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Classes\LochFile\shell\open\command"; ValueType: string; ValueData: """{app}\loch.exe"" ""%1"""; Check: not InstallForAll

Root: "HKCU"; Subkey: "SOFTWARE\Therion"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TclTk"; ValueData: "1"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "TeX"; ValueData: "3"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "ImageMagick"; ValueData: "1"; Flags: uninsdeletekey; Check: not InstallForAll
Root: "HKCU"; Subkey: "SOFTWARE\Therion"; ValueType: dword; ValueName: "AppCtrl"; ValueData: "1"; Flags: uninsdeletekey; Check: not InstallForAll

[Code]
var
  Path, IconPath: String;  
  InstallTypePage: TInputOptionWizardPage;
  rbUser, rbAll: TNewRadioButton;

procedure DeleteBatteries;
begin
  DelTree(ExpandConstant('{app}\bin'), true, true, true);
  DelTree(ExpandConstant('{app}\lib'), true, true, true);
  DelTree(ExpandConstant('{app}\texmf'), true, true, true);
end;

procedure InitializeWizard;
begin
  InstallTypePage := CreateInputOptionPage(wpWelcome, 'Installation type', '',
  'Please select if you want the app installed for all users or just the current one.',
  true, False);

  // Add the radio buttons and set the initial values
  rbAll := TNewRadioButton.Create(InstallTypePage);
  rbAll.Parent := InstallTypePage.Surface;
  rbAll.Top := 30;
  rbAll.Width := 300;
  rbAll.Caption := 'Install for all users (requires Admin privileges)';
  rbAll.Checked := IsAdmin;
  rbAll.Enabled := IsAdmin;
      
  rbUser := TNewRadioButton.Create(InstallTypePage);
  rbUser.Parent := InstallTypePage.Surface;
  rbUser.Top := 55;
  rbUser.Width := 150;
  rbUser.Caption := 'Install only for me';
  rbUser.Checked := not rbAll.Checked;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if CurPageID = InstallTypePage.ID then
  begin
    if rbAll.Checked then
    begin
      IconPath := ExpandConstant('{commonstartmenu}') + '\' + '{#SetupSetting("DefaultGroupName")}';
      Path := ExpandConstant('{commonpf}') + '\' + '{#SetupSetting("AppName")}';
    end else
    begin
      IconPath := ExpandConstant('{userstartmenu}') + '\' + '{#SetupSetting("DefaultGroupName")}';
      Path := ExpandConstant('{localappdata}') + '\' + '{#SetupSetting("AppName")}';
    end;
    // Set the suggested path depending on the install type
    WizardForm.DirEdit.Text := Path;
  end;
  
  // Build the icon path after the user selects the start menu group name
  if CurPageID = wpSelectProgramGroup then
  begin
    if rbAll.Checked then
      IconPath := ExpandConstant('{commonstartmenu}') + '\' + WizardGroupValue
    else
      IconPath := ExpandConstant('{userstartmenu}') + '\' + WizardGroupValue;
  end;
end;

function InstallForAll: Boolean;
begin
  Result := rbAll.Checked;
end;

function GetIconPath(Value: string): String;
begin
  Result := IconPath;
end;
