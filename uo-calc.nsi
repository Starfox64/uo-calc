############################################################################################
#      NSIS Installation Script created by NSIS Quick Setup Script Generator v1.09.18
#               Entirely Edited with NullSoft Scriptable Installation System                
#              by Vlasis K. Barkas aka Red Wine red_wine@freemail.gr Sep 2006               
############################################################################################

!define APP_NAME "UO Calculator"
!define COMP_NAME "Starfox64"
!define VERSION "1.0.0.0"
!define COPYRIGHT "Starfox64 © 2015"
!define DESCRIPTION "A simple utility designed to save your brain from doing maths while playing at united Operations."
!define LICENSE_TXT ".\LICENSE.txt"
!define INSTALLER_NAME ".\uo-calc_setup_${VERSION}.exe"
!define MAIN_APP_EXE "uo-calc.exe"
!define INSTALL_TYPE "SetShellVarContext current"
!define REG_ROOT "HKCU"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"

!define REG_START_MENU "Start Menu Folder"

var SM_Folder

######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor BZIP2
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\uo-calc"

######################################################################

!include "MUI.nsh"

!define MUI_UI_HEADERIMAGE_RIGHT "./src/img/UO_Logo_256.png"
!define MUI_ICON "./src/img/UO_Logo_256.ico"
!define MUI_UNICON "./src/img/UO_Logo_256.ico"

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!insertmacro MUI_PAGE_DIRECTORY

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "UO Calculator"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif

!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File ".\d3dcompiler_47.dll"
File ".\icudtl.dat"
File ".\libEGL.dll"
File ".\libGLESv2.dll"
File ".\LICENSE.txt"
File ".\nw.pak"
File ".\nwjc.exe"
File ".\package.json"
File ".\uo-calc.exe"
SetOutPath "$INSTDIR\src"
File ".\src\index.html"
File ".\src\mortar.html"
SetOutPath "$INSTDIR\src\js"
File ".\src\js\bootstrap.min.js"
File ".\src\js\jquery.min.js"
File ".\src\js\range-table.json"
SetOutPath "$INSTDIR\src\img"
File ".\src\img\UO_Logo_256.ico"
File ".\src\img\UO_Logo_256.png"
SetOutPath "$INSTDIR\src\fonts"
File ".\src\fonts\glyphicons-halflings-regular.eot"
File ".\src\fonts\glyphicons-halflings-regular.svg"
File ".\src\fonts\glyphicons-halflings-regular.ttf"
File ".\src\fonts\glyphicons-halflings-regular.woff"
File ".\src\fonts\glyphicons-halflings-regular.woff2"
SetOutPath "$INSTDIR\src\fonts\Roboto-regular"
File ".\src\fonts\Roboto-regular\LICENSE.txt"
File ".\src\fonts\Roboto-regular\Roboto-regular.eot"
File ".\src\fonts\Roboto-regular\Roboto-regular.svg"
File ".\src\fonts\Roboto-regular\Roboto-regular.ttf"
File ".\src\fonts\Roboto-regular\Roboto-regular.woff"
File ".\src\fonts\Roboto-regular\Roboto-regular.woff2"
SetOutPath "$INSTDIR\src\fonts\Roboto-500"
File ".\src\fonts\Roboto-500\LICENSE.txt"
File ".\src\fonts\Roboto-500\Roboto-500.eot"
File ".\src\fonts\Roboto-500\Roboto-500.svg"
File ".\src\fonts\Roboto-500\Roboto-500.ttf"
File ".\src\fonts\Roboto-500\Roboto-500.woff"
File ".\src\fonts\Roboto-500\Roboto-500.woff2"
SetOutPath "$INSTDIR\src\font-awesome"
File ".\src\font-awesome\HELP-US-OUT.txt"
SetOutPath "$INSTDIR\src\font-awesome\scss"
File ".\src\font-awesome\scss\font-awesome.scss"
File ".\src\font-awesome\scss\_animated.scss"
File ".\src\font-awesome\scss\_bordered-pulled.scss"
File ".\src\font-awesome\scss\_core.scss"
File ".\src\font-awesome\scss\_fixed-width.scss"
File ".\src\font-awesome\scss\_icons.scss"
File ".\src\font-awesome\scss\_larger.scss"
File ".\src\font-awesome\scss\_list.scss"
File ".\src\font-awesome\scss\_mixins.scss"
File ".\src\font-awesome\scss\_path.scss"
File ".\src\font-awesome\scss\_rotated-flipped.scss"
File ".\src\font-awesome\scss\_stacked.scss"
File ".\src\font-awesome\scss\_variables.scss"
SetOutPath "$INSTDIR\src\font-awesome\less"
File ".\src\font-awesome\less\animated.less"
File ".\src\font-awesome\less\bordered-pulled.less"
File ".\src\font-awesome\less\core.less"
File ".\src\font-awesome\less\fixed-width.less"
File ".\src\font-awesome\less\font-awesome.less"
File ".\src\font-awesome\less\icons.less"
File ".\src\font-awesome\less\larger.less"
File ".\src\font-awesome\less\list.less"
File ".\src\font-awesome\less\mixins.less"
File ".\src\font-awesome\less\path.less"
File ".\src\font-awesome\less\rotated-flipped.less"
File ".\src\font-awesome\less\stacked.less"
File ".\src\font-awesome\less\variables.less"
SetOutPath "$INSTDIR\src\font-awesome\fonts"
File ".\src\font-awesome\fonts\fontawesome-webfont.eot"
File ".\src\font-awesome\fonts\fontawesome-webfont.svg"
File ".\src\font-awesome\fonts\fontawesome-webfont.ttf"
File ".\src\font-awesome\fonts\fontawesome-webfont.woff"
File ".\src\font-awesome\fonts\fontawesome-webfont.woff2"
File ".\src\font-awesome\fonts\FontAwesome.otf"
SetOutPath "$INSTDIR\src\font-awesome\css"
File ".\src\font-awesome\css\font-awesome.css"
File ".\src\font-awesome\css\font-awesome.min.css"
SetOutPath "$INSTDIR\src\css"
File ".\src\css\bootstrap.min.css"
File ".\src\css\fonts.css"
SetOutPath "$INSTDIR\locales"
File ".\locales\am.pak"
File ".\locales\ar.pak"
File ".\locales\bg.pak"
File ".\locales\bn.pak"
File ".\locales\ca.pak"
File ".\locales\cs.pak"
File ".\locales\da.pak"
File ".\locales\de.pak"
File ".\locales\el.pak"
File ".\locales\en-GB.pak"
File ".\locales\en-US.pak"
File ".\locales\es-419.pak"
File ".\locales\es.pak"
File ".\locales\et.pak"
File ".\locales\fa.pak"
File ".\locales\fi.pak"
File ".\locales\fil.pak"
File ".\locales\fr.pak"
File ".\locales\gu.pak"
File ".\locales\hi.pak"
File ".\locales\hr.pak"
File ".\locales\hu.pak"
File ".\locales\id.pak"
File ".\locales\it.pak"
File ".\locales\iw.pak"
File ".\locales\ja.pak"
File ".\locales\kn.pak"
File ".\locales\ko.pak"
File ".\locales\lt.pak"
File ".\locales\lv.pak"
File ".\locales\ml.pak"
File ".\locales\mr.pak"
File ".\locales\ms.pak"
File ".\locales\nl.pak"
File ".\locales\no.pak"
File ".\locales\pl.pak"
File ".\locales\pt-BR.pak"
File ".\locales\pt-PT.pak"
File ".\locales\ro.pak"
File ".\locales\ru.pak"
File ".\locales\sk.pak"
File ".\locales\sl.pak"
File ".\locales\sr.pak"
File ".\locales\sv.pak"
File ".\locales\sw.pak"
File ".\locales\ta.pak"
File ".\locales\te.pak"
File ".\locales\th.pak"
File ".\locales\tr.pak"
File ".\locales\uk.pak"
File ".\locales\vi.pak"
File ".\locales\zh-CN.pak"
File ".\locales\zh-TW.pak"
SectionEnd

######################################################################

Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\UO Calculator"
CreateShortCut "$SMPROGRAMS\UO Calculator\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\UO Calculator\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\UO Calculator\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
${INSTALL_TYPE}
Delete "$INSTDIR\d3dcompiler_47.dll"
Delete "$INSTDIR\icudtl.dat"
Delete "$INSTDIR\libEGL.dll"
Delete "$INSTDIR\libGLESv2.dll"
Delete "$INSTDIR\LICENSE.txt"
Delete "$INSTDIR\nw.pak"
Delete "$INSTDIR\nwjc.exe"
Delete "$INSTDIR\package.json"
Delete "$INSTDIR\uo-calc.exe"
Delete "$INSTDIR\src\index.html"
Delete "$INSTDIR\src\mortar.html"
Delete "$INSTDIR\src\js\bootstrap.min.js"
Delete "$INSTDIR\src\js\jquery.min.js"
Delete "$INSTDIR\src\js\range-table.json"
Delete "$INSTDIR\src\img\UO_Logo_256.ico"
Delete "$INSTDIR\src\img\UO_Logo_256.png"
Delete "$INSTDIR\src\fonts\glyphicons-halflings-regular.eot"
Delete "$INSTDIR\src\fonts\glyphicons-halflings-regular.svg"
Delete "$INSTDIR\src\fonts\glyphicons-halflings-regular.ttf"
Delete "$INSTDIR\src\fonts\glyphicons-halflings-regular.woff"
Delete "$INSTDIR\src\fonts\glyphicons-halflings-regular.woff2"
Delete "$INSTDIR\src\fonts\Roboto-regular\LICENSE.txt"
Delete "$INSTDIR\src\fonts\Roboto-regular\Roboto-regular.eot"
Delete "$INSTDIR\src\fonts\Roboto-regular\Roboto-regular.svg"
Delete "$INSTDIR\src\fonts\Roboto-regular\Roboto-regular.ttf"
Delete "$INSTDIR\src\fonts\Roboto-regular\Roboto-regular.woff"
Delete "$INSTDIR\src\fonts\Roboto-regular\Roboto-regular.woff2"
Delete "$INSTDIR\src\fonts\Roboto-500\LICENSE.txt"
Delete "$INSTDIR\src\fonts\Roboto-500\Roboto-500.eot"
Delete "$INSTDIR\src\fonts\Roboto-500\Roboto-500.svg"
Delete "$INSTDIR\src\fonts\Roboto-500\Roboto-500.ttf"
Delete "$INSTDIR\src\fonts\Roboto-500\Roboto-500.woff"
Delete "$INSTDIR\src\fonts\Roboto-500\Roboto-500.woff2"
Delete "$INSTDIR\src\font-awesome\HELP-US-OUT.txt"
Delete "$INSTDIR\src\font-awesome\scss\font-awesome.scss"
Delete "$INSTDIR\src\font-awesome\scss\_animated.scss"
Delete "$INSTDIR\src\font-awesome\scss\_bordered-pulled.scss"
Delete "$INSTDIR\src\font-awesome\scss\_core.scss"
Delete "$INSTDIR\src\font-awesome\scss\_fixed-width.scss"
Delete "$INSTDIR\src\font-awesome\scss\_icons.scss"
Delete "$INSTDIR\src\font-awesome\scss\_larger.scss"
Delete "$INSTDIR\src\font-awesome\scss\_list.scss"
Delete "$INSTDIR\src\font-awesome\scss\_mixins.scss"
Delete "$INSTDIR\src\font-awesome\scss\_path.scss"
Delete "$INSTDIR\src\font-awesome\scss\_rotated-flipped.scss"
Delete "$INSTDIR\src\font-awesome\scss\_stacked.scss"
Delete "$INSTDIR\src\font-awesome\scss\_variables.scss"
Delete "$INSTDIR\src\font-awesome\less\animated.less"
Delete "$INSTDIR\src\font-awesome\less\bordered-pulled.less"
Delete "$INSTDIR\src\font-awesome\less\core.less"
Delete "$INSTDIR\src\font-awesome\less\fixed-width.less"
Delete "$INSTDIR\src\font-awesome\less\font-awesome.less"
Delete "$INSTDIR\src\font-awesome\less\icons.less"
Delete "$INSTDIR\src\font-awesome\less\larger.less"
Delete "$INSTDIR\src\font-awesome\less\list.less"
Delete "$INSTDIR\src\font-awesome\less\mixins.less"
Delete "$INSTDIR\src\font-awesome\less\path.less"
Delete "$INSTDIR\src\font-awesome\less\rotated-flipped.less"
Delete "$INSTDIR\src\font-awesome\less\stacked.less"
Delete "$INSTDIR\src\font-awesome\less\variables.less"
Delete "$INSTDIR\src\font-awesome\fonts\fontawesome-webfont.eot"
Delete "$INSTDIR\src\font-awesome\fonts\fontawesome-webfont.svg"
Delete "$INSTDIR\src\font-awesome\fonts\fontawesome-webfont.ttf"
Delete "$INSTDIR\src\font-awesome\fonts\fontawesome-webfont.woff"
Delete "$INSTDIR\src\font-awesome\fonts\fontawesome-webfont.woff2"
Delete "$INSTDIR\src\font-awesome\fonts\FontAwesome.otf"
Delete "$INSTDIR\src\font-awesome\css\font-awesome.css"
Delete "$INSTDIR\src\font-awesome\css\font-awesome.min.css"
Delete "$INSTDIR\src\css\bootstrap.min.css"
Delete "$INSTDIR\src\css\fonts.css"
Delete "$INSTDIR\locales\am.pak"
Delete "$INSTDIR\locales\ar.pak"
Delete "$INSTDIR\locales\bg.pak"
Delete "$INSTDIR\locales\bn.pak"
Delete "$INSTDIR\locales\ca.pak"
Delete "$INSTDIR\locales\cs.pak"
Delete "$INSTDIR\locales\da.pak"
Delete "$INSTDIR\locales\de.pak"
Delete "$INSTDIR\locales\el.pak"
Delete "$INSTDIR\locales\en-GB.pak"
Delete "$INSTDIR\locales\en-US.pak"
Delete "$INSTDIR\locales\es-419.pak"
Delete "$INSTDIR\locales\es.pak"
Delete "$INSTDIR\locales\et.pak"
Delete "$INSTDIR\locales\fa.pak"
Delete "$INSTDIR\locales\fi.pak"
Delete "$INSTDIR\locales\fil.pak"
Delete "$INSTDIR\locales\fr.pak"
Delete "$INSTDIR\locales\gu.pak"
Delete "$INSTDIR\locales\hi.pak"
Delete "$INSTDIR\locales\hr.pak"
Delete "$INSTDIR\locales\hu.pak"
Delete "$INSTDIR\locales\id.pak"
Delete "$INSTDIR\locales\it.pak"
Delete "$INSTDIR\locales\iw.pak"
Delete "$INSTDIR\locales\ja.pak"
Delete "$INSTDIR\locales\kn.pak"
Delete "$INSTDIR\locales\ko.pak"
Delete "$INSTDIR\locales\lt.pak"
Delete "$INSTDIR\locales\lv.pak"
Delete "$INSTDIR\locales\ml.pak"
Delete "$INSTDIR\locales\mr.pak"
Delete "$INSTDIR\locales\ms.pak"
Delete "$INSTDIR\locales\nl.pak"
Delete "$INSTDIR\locales\no.pak"
Delete "$INSTDIR\locales\pl.pak"
Delete "$INSTDIR\locales\pt-BR.pak"
Delete "$INSTDIR\locales\pt-PT.pak"
Delete "$INSTDIR\locales\ro.pak"
Delete "$INSTDIR\locales\ru.pak"
Delete "$INSTDIR\locales\sk.pak"
Delete "$INSTDIR\locales\sl.pak"
Delete "$INSTDIR\locales\sr.pak"
Delete "$INSTDIR\locales\sv.pak"
Delete "$INSTDIR\locales\sw.pak"
Delete "$INSTDIR\locales\ta.pak"
Delete "$INSTDIR\locales\te.pak"
Delete "$INSTDIR\locales\th.pak"
Delete "$INSTDIR\locales\tr.pak"
Delete "$INSTDIR\locales\uk.pak"
Delete "$INSTDIR\locales\vi.pak"
Delete "$INSTDIR\locales\zh-CN.pak"
Delete "$INSTDIR\locales\zh-TW.pak"

RmDir "$INSTDIR\locales"
RmDir "$INSTDIR\src\css"
RmDir "$INSTDIR\src\font-awesome\css"
RmDir "$INSTDIR\src\font-awesome\fonts"
RmDir "$INSTDIR\src\font-awesome\less"
RmDir "$INSTDIR\src\font-awesome\scss"
RmDir "$INSTDIR\src\font-awesome"
RmDir "$INSTDIR\src\fonts\Roboto-500"
RmDir "$INSTDIR\src\fonts\Roboto-regular"
RmDir "$INSTDIR\src\fonts"
RmDir "$INSTDIR\src\img"
RmDir "$INSTDIR\src\js"
RmDir "$INSTDIR\src"
 
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif

RmDir "$INSTDIR"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\UO Calculator\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\UO Calculator\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\UO Calculator\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\UO Calculator"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

######################################################################