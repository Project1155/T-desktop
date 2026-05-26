; Stremio Community v5 Installer
!include "MUI2.nsh"

Name "Stremio Community v5"
OutFile "stremio-community-setup.exe"
InstallDir "$PROGRAMFILES\Stremio"

!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

Section "Install"
  SetOutPath "$INSTDIR"
  File "Release\*.exe"
  CreateDirectory "$SMPROGRAMS\Stremio"
  CreateShortCut "$SMPROGRAMS\Stremio\Stremio.lnk" "$INSTDIR\stremio.exe"
  CreateShortCut "$DESKTOP\Stremio.lnk" "$INSTDIR\stremio.exe"
SectionEnd

Section "Uninstall"
  RMDir /r "$INSTDIR"
  RMDir /r "$SMPROGRAMS\Stremio"
  Delete "$DESKTOP\Stremio.lnk"
SectionEnd
