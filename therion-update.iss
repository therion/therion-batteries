[Setup]
#include "common.iss"
OutputBaseFilename=therion-update
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
SolidCompression=yes

[Files]
Source: therion\therion.exe; DestDir: {app}
Source: therion\therion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: therion\therion.ini; DestDir: {app}; Destname: therion.new.ini
Source: therion\xtherion\xtherion.tcl; DestDir: {app}
Source: therion\xtherion\xtherion.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: therion\xtherion\xtherion.ini; DestDir: {app}; Destname: xtherion.new.ini

Source: therion\thbook\thbook.pdf; DestDir: {app}
Source: therion\CHANGES; DestDir: {app}; Destname: CHANGES.txt
Source: therion\loch\locale\*.mo; DestDir: {app}; Flags: recursesubdirs
Source: therion\loch\help\*.chm; DestDir: {app}; Flags: recursesubdirs
Source: therion\loch\loch.exe; DestDir: {app}

Source: therion\samples\*.*; DestDir: {app}\samples; Flags: recursesubdirs

[Code]
var tex_version:cardinal;
    tcl_version:cardinal;
    imk_version:cardinal;
    app_version:cardinal;
    ok:boolean;
function InitializeSetup(): boolean;
begin
  Result:=true;
  if (not (RegValueExists(HKLM,'SOFTWARE\Therion','TeX') and RegValueExists(HKLM,'SOFTWARE\Therion','TclTk'))) then begin
    if (not (RegValueExists(HKCU,'SOFTWARE\Therion','TeX') and RegValueExists(HKCU,'SOFTWARE\Therion','TclTk'))) then begin
      MsgBox('No full Therion installation detected, aborting!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
      Result:=false;
    end
  end
  if (Result) then begin
    ok:=True;
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','TeX',tex_version);
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','TclTk',tcl_version);
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','ImageMagick',imk_version);
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','AppCtrl',app_version);
    if (not ok) then begin
      ok:=True;
      ok:=ok and RegQueryDWordValue(HKCU,'SOFTWARE\Therion','TeX',tex_version);
      ok:=ok and RegQueryDWordValue(HKCU,'SOFTWARE\Therion','TclTk',tcl_version);
      ok:=ok and RegQueryDWordValue(HKCU,'SOFTWARE\Therion','ImageMagick',imk_version);
      ok:=ok and RegQueryDWordValue(HKCU,'SOFTWARE\Therion','AppCtrl',app_version);
    end
    if (not ok) then begin
      MsgBox('Can''t read informations about previous installation' #13#10 'or previous Therion installation is too old!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
      Result:=false;
    end
    else if((tex_version<2) or (tcl_version<1) or (imk_version<1) or (app_version<1)) then
    begin
      MsgBox('Previous Therion installation is too old!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
      Result:=false;
    end
    else Result:=true
  end;
end;
