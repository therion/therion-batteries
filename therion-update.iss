[Setup]
#include "common.iss"
OutputBaseFilename=therion-update
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes

[Files]
Source: therion\therion.exe; DestDir: {app}
Source: therion\xtherion\xtherion.tcl; DestDir: {app}
Source: therion\thbook\thbook.pdf; DestDir: {app}
Source: therion\CHANGES; DestDir: {app}; Destname: CHANGES.txt

[Code]
var tex_version:cardinal;
    tcl_version:cardinal;
    ok:boolean;
function InitializeSetup(): boolean;
begin
  if (not (RegValueExists(HKLM,'SOFTWARE\Therion','TeX') and RegValueExists(HKLM,'SOFTWARE\Therion','TclTk'))) then begin
    MsgBox('No full Therion installation detected, aborting!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
    Result:=false;
  end
  else begin
    ok:=True;
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','TeX',tex_version);
    ok:=ok and RegQueryDWordValue(HKLM,'SOFTWARE\Therion','TclTk',tcl_version);
    if (not ok) then begin
      MsgBox('Can''t read informations about previous installation!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
      Result:=false;
    end
    else if((tex_version<1) or (tcl_version<1)) then
    begin
      MsgBox('Previous Therion installation is too old!' #13#10#13#10 'Install full version of Therion, please.', mbError, MB_OK);
      Result:=false;
    end
    else Result:=true
  end;
end;
