::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZVWBaLJCuMB7sV++DHy+WEt0AYWvYsRKLv6IijFNJd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 >nul
title MTR Settings
color 0F
mode con cols=104 lines=29

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Requesting elevation...
    powershell -NoProfile -Command "Start-Process cmd.exe -ArgumentList '/c \"%~f0\"' -WorkingDirectory '%~dp0' -Verb RunAs"
    exit /b
)

setlocal enabledelayedexpansion

call :loadlanguage
goto main

:banner
echo.
echo  ███╗   ███╗████████╗██████╗     ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
echo  ████╗ ████║╚══██╔══╝██╔══██╗    ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
echo  ██╔████╔██║   ██║   ██████╔╝    ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
echo  ██║╚██╔╝██║   ██║   ██╔══██╗    ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
echo  ██║ ╚═╝ ██║   ██║   ██║  ██║    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
echo  ╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝    ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
echo.
goto :eof

:loadlanguage
reg query "HKCU\Software\MTR" /v "UserLanguage" >nul 2>&1
if %errorlevel%==0 (
    for /f "tokens=3" %%A in ('reg query "HKCU\Software\MTR" /v "UserLanguage"') do set "lang=%%A"
) else (
    set "lang=en-US"
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d en-US /f
)

if "%lang%"=="en-US" goto lang_en-US
if "%lang%"=="it-IT" goto lang_it-IT
if "%lang%"=="vi-VN" goto lang_vi-VN
if "%lang%"=="ja-JP" goto lang_ja-JP
if "%lang%"=="ru-RU" goto lang_ru-RU
if "%lang%"=="es-ES" goto lang_es-ES
if "%lang%"=="de-DE" goto lang_de-DE
goto lang_en-US

:lang_en-US
set "maintitle=MTR Settings"
set "generalsettings=General Settings"
set "adminsettings=Admin Settings"
set "perftitle=Performance Settings"
set "advsettingstitle=Advanced Settings"
set "languageoption=Language"
set "personalization=Personalization"
set "privacyoptions=Privacy Options"
set "additionaloptions=Additional Options"
set "debloattitle=Debloat"
set "cleanertitle=Cleaner"
set "toolstitle=Developer Settings"
set "networktitle=Network Tools"
set "gamingtitle=Gaming Optimization"
set "sysinfotitle=System Dashboard"
set "sectitle=Security Center"
set "themetitle=Theme Selection"
set "credits=Credits"
set "mainmenu=Back to Menu"
set "exit=Exit"
set "enable=Enable"
set "disable=Disable"
set "done=Done."
set "gpuinfo=GPU"
set "diskinfo=Disk Storage"
set "cpuusage=CPU Usage"
set "ramusage=Memory Usage"
set "dnschanger=DNS Changer"
set "speedtest=Network Speed Test"
set "processopt=Game Process Optimizer"
set "portscan=Port Scanner"
set "regsearch=Registry Search"
goto :eof

:lang_it-IT
set "maintitle=Impostazioni MTR"
set "generalsettings=Impostazioni Generali"
set "adminsettings=Impostazioni Amministratore"
set "perftitle=Impostazioni Prestazioni"
set "advsettingstitle=Impostazioni Avanzate"
set "languageoption=Lingua"
set "personalization=Personalizzazione"
set "privacyoptions=Opzioni Privacy"
set "additionaloptions=Opzioni Aggiuntive"
set "debloattitle=Debloat"
set "cleanertitle=Pulizia"
set "toolstitle=Strumenti Sviluppatore"
set "networktitle=Strumenti di Rete"
set "gamingtitle=Ottimizzazione Gaming"
set "sysinfotitle=Dashboard Sistema"
set "sectitle=Centro Sicurezza"
set "themetitle=Selezione Tema"
set "credits=Crediti"
set "mainmenu=Torna al Menu"
set "exit=Esci"
set "enable=Attiva"
set "disable=Disattiva"
set "done=Fatto."
set "gpuinfo=GPU"
set "diskinfo=Disco"
set "cpuusage=Utilizzo CPU"
set "ramusage=Utilizzo RAM"
set "dnschanger=Cambia DNS"
set "speedtest=Test Velocità"
set "processopt=Ottimizzatore Processi"
set "portscan=Scanner Porte"
set "regsearch=Cerca nel Registro"
goto :eof

:lang_vi-VN
set "maintitle=Cai dat MTR"
set "generalsettings=Cai dat Tong"
set "adminsettings=Cai dat Admin"
set "perftitle=Cai dat Hieu suat"
set "advsettingstitle=Cai dat Nang cao"
set "languageoption=Ngon ngu"
set "personalization=Ca nhan hoa"
set "privacyoptions=Tuy chon Rieng tu"
set "additionaloptions=Tuy chon Them"
set "debloattitle=Don dep"
set "cleanertitle=Don sach"
set "toolstitle=Cai dat Phat trien"
set "networktitle=Cong cu Mang"
set "gamingtitle=Toi uu Gaming"
set "sysinfotitle=Bang dieu khien"
set "sectitle=Trung tam Bao mat"
set "themetitle=Chon Giao dien"
set "credits=Tu cach"
set "mainmenu= Quay lai Menu"
set "exit=Thoat"
set "enable=Bat"
set "disable=Tat"
set "done=Xong."
set "gpuinfo=GPU"
set "diskinfo=O dia"
set "cpuusage=Su dung CPU"
set "ramusage=Su dung RAM"
set "dnschanger=Doi DNS"
set "speedtest=Kiem tra toc do"
set "processopt=Toi uu quy trinh"
set "portscan=Quet cong"
set "regsearch=Tim kiem Registry"
goto :eof

:lang_ja-JP
set "maintitle=MTR 设定"
set "generalsettings=一般設定"
set "adminsettings=管理者設定"
set "perftitle=パフォーマンス設定"
set "advsettingstitle=詳細設定"
set "languageoption=言語"
set "personalization=個人設定"
set "privacyoptions=プライバシー"
set "additionaloptions=追加オプション"
set "debloattitle=デブロイト"
set "cleanertitle=クリーナー"
set "toolstitle=システムツール"
set "networktitle=ネットワークツール"
set "credits=クレジット"
set "mainmenu=メニューに戻る"
set "exit=終了"
set "enable=有効"
set "disable=無効"
set "done=完了。"
goto :eof

:lang_ru-RU
set "maintitle=HacTpoMKT MTR"
set "generalsettings=O6uye HacTpoMKT"
set "adminsettings=AnMNHCTpaTopcKHe HacTpoMKT"
set "perftitle=ProH3BOA~CTCeHHue"
set "advsettingstitle=PaC~upeHHue HacTpoMKT"
set "languageoption=AzblK"
set "personalization= nepconaAL~y3a"
set "privacyoptions=piLivHoCTh"
set "additionaloptions=Ao o n a n bH onH o s t a n o B k h"
set "debloattitle=o q m c t k o n"
set "cleanertitle=O q c t k a"
set "toolstitle=C ncTeMHble IHCTpyMeHTbl"
set "networktitle=C e T e B b I O n a T O K T O B"
set "credits=C o o 6 m e h h h"
set "mainmenu=H a 3 a T b B M e H"
set "exit=BbI x o"
set "enable=BKAKnOBTe"
set "disable=BbKAKnOBTe"
set "done=Bblno."
goto :eof

:setlanguage
cls
echo ==============================================================================================
echo                          Select Language
echo ==============================================================================================
echo [1] English
echo [2] Italiano
echo [3] Tieng Viet
echo [4] Nihongo
echo [5] Russkiy
echo [6] Espanol
echo [7] Deutsch
echo [8] Back to Menu
echo ==============================================================================================
choice /c 12345678 /n
if %errorlevel%==1 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d en-US /f
    set lang=en-US
)
if %errorlevel%==2 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d it-IT /f
    set lang=it-IT
)
if %errorlevel%==3 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d vi-VN /f
    set lang=vi-VN
)
if %errorlevel%==4 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d ja-JP /f
    set lang=ja-JP
)
if %errorlevel%==5 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d ru-RU /f
    set lang=ru-RU
)
if %errorlevel%==6 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d es-ES /f
    set lang=es-ES
)
if %errorlevel%==7 (
    reg add "HKCU\Software\MTR" /v UserLanguage /t REG_SZ /d de-DE /f
    set lang=de-DE
)
if %errorlevel%==8 goto main
call :loadlanguage
goto main

:main
cls
call :banner
echo ==============================================================================================
echo                              %maintitle%
echo ==============================================================================================
set "c1=[1] %generalsettings%                               "
set "c2=[6] %personalization%                               "
echo  !c1:~0,31! !c2:~0,31! [D] %toolstitle%
set "c1=[2] %adminsettings%                                 "
set "c2=[7] %privacyoptions%                                "
echo  !c1:~0,31! !c2:~0,31! [W] %networktitle%
set "c1=[3] %perftitle%                                     "
set "c2=[8] %additionaloptions%                             "
echo  !c1:~0,31! !c2:~0,31! [G] %gamingtitle%
set "c1=[4] %advsettingstitle%                              "
set "c2=[9] %debloattitle%                                  "
echo  !c1:~0,31! !c2:~0,31! [S] %sysinfotitle%
set "c1=[5] %languageoption%                                "
set "c2=[0] %cleanertitle%                                  "
echo  !c1:~0,31! !c2:~0,31! [Z] %sectitle%
set "c1=[E] %credits%                                       "
echo  !c1:~0,31! [X] %exit%
echo ==============================================================================================
choice /c 1234567890DWEGSZX /n
if %errorlevel%==1 goto generalsettings
if %errorlevel%==2 goto adminsettings
if %errorlevel%==3 goto perfsettings
if %errorlevel%==4 goto advanced
if %errorlevel%==5 goto setlanguage
if %errorlevel%==6 goto personalization
if %errorlevel%==7 goto privacyoptions
if %errorlevel%==8 goto additionaloptions
if %errorlevel%==9 goto debloat
if %errorlevel%==10 goto cleaner
if %errorlevel%==11 goto systemtools
if %errorlevel%==12 goto networktools
if %errorlevel%==13 goto credits
if %errorlevel%==14 goto gamingopt
if %errorlevel%==15 goto sysinfodash
if %errorlevel%==16 goto securitycenter
if %errorlevel%==17 exit
goto main

:credits
cls
echo ==============================================================================================
echo                                Credits
echo ==============================================================================================
echo.
echo Owner:      Missle104
echo Contributor: MatrixVanish LNQuang
echo.
echo Original Script: Kodiak OS 10 MTR Build
echo.
echo Thank you for using MTR Settings!
echo.
echo Press any key to go back...
pause >nul
goto main

:generalsettings
cls
echo ==============================================================================================
echo                            %generalsettings%
echo ==============================================================================================
echo [1] Verbose Status
echo [2] Force Ownership
echo [3] Detailed BSOD
echo [4] Flush Explorer MRU
echo [5] Boot UX
echo [6] Quiet Boot
echo [7] Legacy F8 Menu
echo [8] Auto Reboot on BSOD
echo [9] Laptop Keyboard
echo [0] User Manager
echo [Q] Explorer Context Menu
echo [W] CMD Window Here
echo [E] Back to Menu
echo ==============================================================================================
choice /c 1234567890QWE /n
if %errorlevel%==1 goto verbosestatus
if %errorlevel%==2 goto forceowntoggle
if %errorlevel%==3 goto bsodhex
if %errorlevel%==4 goto flushbagmru
if %errorlevel%==5 goto unbrandedboot
if %errorlevel%==6 goto quietboot
if %errorlevel%==7 goto legacybootmenu
if %errorlevel%==8 goto autoreboot
if %errorlevel%==9 goto togglekeyboard
if %errorlevel%==10 goto usermgr
if %errorlevel%==11 goto explorercontextmenu
if %errorlevel%==12 goto cmdwindowhere
if %errorlevel%==13 goto main
goto generalsettings

:verbosestatus
cls
echo =====================================================================
echo                   Verbose Status
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v VerboseStatus /d 1 /f
if %errorlevel%==2 reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v VerboseStatus /d 0 /f
echo %done%
pause >nul
goto generalsettings

:forceowntoggle
cls
echo =====================================================================
echo               Force Ownership Option
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 goto enableforceown
if %errorlevel%==2 goto disableforceown
goto generalsettings

:enableforceown
reg add "HKEY_CLASSES_ROOT\*\shell\forceown" /ve /t REG_SZ /d "Take Ownership" /f
reg add "HKEY_CLASSES_ROOT\*\shell\forceown\command" /ve /t REG_SZ /d "takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\forceown" /ve /t REG_SZ /d "Take Ownership" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\forceown\command" /ve /t REG_SZ /d "takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
echo %done%
pause >nul
goto generalsettings

:disableforceown
reg delete "HKEY_CLASSES_ROOT\*\shell\forceown" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\forceown" /f
echo %done%
pause >nul
goto generalsettings

:bsodhex
cls
echo =====================================================================
echo               Detailed BSOD
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v DisplayParameters /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v DisplayParameters /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto generalsettings

:flushbagmru
reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
echo %done%
pause >nul
goto generalsettings

:unbrandedboot
cls
echo =====================================================================
echo                   Boot UX
echo =====================================================================
echo [1] Standard
echo [2] Basic
echo [3] %disable%
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 bcdedit /set bootux standard
if %errorlevel%==2 bcdedit /set bootux basic
if %errorlevel%==3 bcdedit /set bootux disabled
echo %done%
pause >nul
goto generalsettings

:quietboot
cls
echo =====================================================================
echo                        Quiet Boot
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set quietboot yes
if %errorlevel%==2 bcdedit /set quietboot no
echo %done%
pause >nul
goto generalsettings

:legacybootmenu
cls
echo =====================================================================
echo                    Legacy F8 Menu
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set bootmenupolicy legacy
if %errorlevel%==2 bcdedit /set bootmenupolicy standard
echo %done%
pause >nul
goto generalsettings

:autoreboot
cls
echo =====================================================================
echo                   Auto Reboot on BSOD
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto generalsettings

:togglekeyboard
cls
echo =====================================================================
echo                     Laptop Keyboard
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 sc config i8042prt start= auto
if %errorlevel%==2 sc config i8042prt start= disabled
echo %done%
pause >nul
goto generalsettings

:usermgr
start control userpasswords2
goto generalsettings

:explorercontextmenu
cls
echo =====================================================================
echo                    Explorer Context Menu
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    reg add "HKCR\Directory\Background\shell\Restart Explorer" /ve /d "Restart Explorer" /f
    reg add "HKCR\Directory\Background\shell\Restart Explorer\command" /ve /d "taskkill /f /im explorer.exe && start explorer.exe" /f
)
if %errorlevel%==2 reg delete "HKCR\Directory\Background\shell\Restart Explorer" /f
echo %done%
pause >nul
goto generalsettings

:cmdwindowhere
cls
echo =====================================================================
echo                    CMD Window Here
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    reg add "HKCR\Directory\Background\shell\cmdhere" /ve /d "Open CMD here" /f
    reg add "HKCR\Directory\Background\shell\cmdhere\command" /ve /d "cmd.exe /k cd \"%%V\"" /f
)
if %errorlevel%==2 (
    reg delete "HKCR\Directory\Background\shell\cmdhere" /f
)
echo %done%
pause >nul
goto generalsettings

:adminsettings
cls
echo ==============================================================================================
echo                            %adminsettings%
echo ==============================================================================================
echo [1] Allow CMD
echo [2] Allow Task Manager
echo [3] Allow Registry Editor
echo [4] Toggle Admin Account
echo [5] Driver Updates
echo [6] Telemetry Toggle
echo [7] Auto Windows Update
echo [8] Windows Defender
echo [9] Full Explorer Path
echo [0] Compress Binaries
echo [Q] Back to Menu
echo ==============================================================================================
choice /c 1234567890Q /n
if %errorlevel%==1 goto togglecmd
if %errorlevel%==2 goto toggletaskmgr
if %errorlevel%==3 goto toggleregedit
if %errorlevel%==4 goto toggleadmin
if %errorlevel%==5 goto toggledrvupd
if %errorlevel%==6 goto toggletlm
if %errorlevel%==7 goto toggleautoupd
if %errorlevel%==8 goto togglewindefender
if %errorlevel%==9 goto showfullexplorerpath
if %errorlevel%==10 goto compactos
if %errorlevel%==11 goto main
goto adminsettings

:togglecmd
cls
echo =====================================================================
echo                          Allow CMD
echo =====================================================================
echo [1] %enable%
echo [2] %disable% (Both)
echo [3] %disable% (CMD Only)
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 2 /f
if %errorlevel%==3 reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto adminsettings

:toggletaskmgr
cls
echo =====================================================================
echo                    Allow Task Manager
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto adminsettings

:toggleregedit
cls
echo =====================================================================
echo                   Allow Registry Editor
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto adminsettings

:toggleadmin
cls
echo =====================================================================
echo                 Toggle Admin Account
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 net user Administrator /active:yes
if %errorlevel%==2 net user Administrator /active:no
echo %done%
pause >nul
goto adminsettings

:toggledrvupd
cls
echo =====================================================================
echo               Driver Updates
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto adminsettings

:toggletlm
cls
echo =====================================================================
echo                    Toggle Telemetry
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto adminsettings

:toggleautoupd
cls
echo =====================================================================
echo                   Auto Windows Update
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto adminsettings

:togglewindefender
cls
echo =====================================================================
echo                  Windows Defender
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
    sc start WinDefend
    sc config WinDefend start=auto
)
if %errorlevel%==2 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
    sc stop WinDefend
    sc config WinDefend start=disabled
)
echo %done%
pause >nul
goto adminsettings

:showfullexplorerpath
cls
echo =====================================================================
echo                  Full Explorer Path
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" /v FullPath /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" /v FullPath /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto adminsettings

:compactos
cls
echo =====================================================================
echo                  Compress Binaries
echo =====================================================================
echo Warning: This may slow down your system.
echo =====================================================================
echo [1] Compress
echo [2] Cancel
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 compact /compactos:always
goto adminsettings

:perfsettings
cls
echo ==============================================================================================
echo                          %perftitle%
echo ==============================================================================================
echo [1] Toggle Hibernation
echo [2] Toggle Search
echo [3] Toggle Sidebar
echo [4] Toggle Min Animation
echo [5] Toggle Start Delay
echo [6] Toggle UI Hover
echo [7] Toggle Background Apps
echo [8] Toggle Alt-Tab
echo [9] Toggle Transparency
echo [Q] Toggle DWM
echo [W] Secure Desktop
echo [E] Back to Menu
echo ==============================================================================================
choice /c 123456789QWE /n
if %errorlevel%==1 goto togglehibernation
if %errorlevel%==2 goto togglesearchindex
if %errorlevel%==3 goto togglewinsidebar
if %errorlevel%==4 goto toggleminanimate
if %errorlevel%==5 goto togglemenushowdelay
if %errorlevel%==6 goto toggleuihover
if %errorlevel%==7 goto togglebgapps
if %errorlevel%==8 goto togglealttab
if %errorlevel%==9 goto toggleaero
if %errorlevel%==10 goto toggledwm
if %errorlevel%==11 goto togglesecuredesktop
if %errorlevel%==12 goto main
goto perfsettings

:togglehibernation
cls
echo =====================================================================
echo                         Toggle Hibernation
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 powercfg -h on
if %errorlevel%==2 powercfg -h off
echo %done%
pause >nul
goto perfsettings

:togglesearchindex
cls
echo =====================================================================
echo                   Toggle Search
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v "EnableSearch" /t REG_DWORD /d 1 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v DisableBackoff /t REG_DWORD /d 0 /f
)
if %errorlevel%==2 (
    reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v "EnableSearch" /t REG_DWORD /d 0 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v DisableBackoff /t REG_DWORD /d 1 /f
)
echo %done%
pause >nul
goto perfsettings

:togglewinsidebar
cls
echo =====================================================================
echo                   Toggle Sidebar
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "Sidebar" /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "Sidebar" /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto perfsettings

:toggleminanimate
cls
echo =====================================================================
echo                   Toggle Min Animation
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f
if %errorlevel%==2 reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
echo %done%
pause >nul
goto perfsettings

:togglemenushowdelay
cls
echo =====================================================================
echo                   Toggle Start Delay
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
if %errorlevel%==2 reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 400 /f
echo %done%
pause >nul
goto perfsettings

:toggleuihover
cls
echo =====================================================================
echo                   Toggle UI Hover
echo =====================================================================
echo [1] Extended
echo [2] None
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ExtendedUIHoverTime /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ExtendedUIHoverTime /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto perfsettings

:togglebgapps
cls
echo =====================================================================
echo                   Toggle Background Apps
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v Enabled /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v Disable /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto perfsettings

:togglealttab
cls
echo =====================================================================
echo                   Toggle Alt-Tab
echo =====================================================================
echo [1] Modern
echo [2] Classic
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto perfsettings

:toggleaero
cls
echo =====================================================================
echo                   Toggle Transparency
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto perfsettings

:toggledwm
cls
echo =====================================================================
echo                        Toggle DWM
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v OneCoreNoBootDWM /t REG_DWORD /d 0 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v OneCoreNoBootDWM /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto perfsettings

:togglesecuredesktop
cls
echo =====================================================================
echo                        Secure Desktop
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto perfsettings

:advanced
cls
echo ==============================================================================================
echo                          %advsettingstitle%
echo ==============================================================================================
echo [1] Boot Logging
echo [2] Debugging
echo [3] Kernel Debugging
echo [4] Safe Mode
echo [5] Driver Signature Enforcement
echo [6] UAC
echo [7] Hyper-V
echo [8] Dynamic Tick
echo [9] Platform Tick
echo [0] Biometric Service
echo [Q] Memory Dump
echo [W] Back to Menu
echo ==============================================================================================
choice /c 1234567890QW /n
if %errorlevel%==1 goto togglebootlogging
if %errorlevel%==2 goto toggledebugging
if %errorlevel%==3 goto togglekerneldebugging
if %errorlevel%==4 goto togglesafemode
if %errorlevel%==5 goto toggledriversignatureenforcement
if %errorlevel%==6 goto toggleuac
if %errorlevel%==7 goto togglehyperv
if %errorlevel%==8 goto toggledynamictick
if %errorlevel%==9 goto useplatformtick
if %errorlevel%==10 goto togglebio
if %errorlevel%==11 goto memorydmp
if %errorlevel%==12 goto main
goto advanced

:togglebootlogging
cls
echo =====================================================================
echo                     Boot Logging
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set bootlog yes
if %errorlevel%==2 bcdedit /set bootlog no
echo %done%
pause >nul
goto advanced

:toggledebugging
cls
echo =====================================================================
echo                   Debugging
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /debug on
if %errorlevel%==2 bcdedit /debug off
echo %done%
pause >nul
goto advanced

:togglekerneldebugging
cls
echo =====================================================================
echo                   Kernel Debugging
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set {default} kerneldebug yes
if %errorlevel%==2 bcdedit /deletevalue {default} kerneldebug
echo %done%
pause >nul
goto advanced

:togglesafemode
cls
echo =====================================================================
echo                   Safe Mode
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set {default} safeboot minimal
if %errorlevel%==2 bcdedit /deletevalue {default} safeboot
echo %done%
pause >nul
goto advanced

:toggledriversignatureenforcement
cls
echo =====================================================================
echo                Driver Signature Enforcement
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set nointegritychecks no
if %errorlevel%==2 bcdedit /set nointegritychecks yes
echo %done%
pause >nul
goto advanced

:toggleuac
cls
echo =====================================================================
echo                   UAC
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto advanced

:togglehyperv
cls
echo =====================================================================
echo                   Hyper-V
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set hypervisorlaunchtype on
if %errorlevel%==2 bcdedit /set hypervisorlaunchtype off
echo %done%
pause >nul
goto advanced

:toggledynamictick
cls
echo =====================================================================
echo                   Dynamic Tick
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set disabledynamictick no
if %errorlevel%==2 bcdedit /set disabledynamictick yes
echo %done%
pause >nul
goto advanced

:useplatformtick
cls
echo =====================================================================
echo                   Platform Tick
echo =====================================================================
echo [1] Yes
echo [2] No
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 bcdedit /set useplatformtick yes
if %errorlevel%==2 bcdedit /set useplatformtick no
echo %done%
pause >nul
goto advanced

:togglebio
cls
echo =====================================================================
echo                   Biometric Service
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    net start "Windows Biometric Service"
    sc config "WbioSrvc" start= auto
)
if %errorlevel%==2 (
    net stop "Windows Biometric Service"
    sc config "WbioSrvc" start= disabled
)
echo %done%
pause >nul
goto advanced

:memorydmp
cls
echo =====================================================================
echo                   Memory Dump
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 1 /f
if %errorlevel%==2 reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto advanced

:personalization
cls
echo ======================================================================
echo                        %personalization%
echo ======================================================================
echo [1] Window Borders
echo [2] Classic Shell
echo [3] MS Settings
echo [4] Visual Effects
echo [5] Toggle Start Menu
echo [6] Change Default Shell
echo [7] Back to Menu
echo ======================================================================
choice /c 1234567 /n
if %errorlevel%==1 start "" "ms-settings:colors"
if %errorlevel%==2 start "" "https://www.classicshell.net/"
if %errorlevel%==3 start "" "ms-settings:personalization"
if %errorlevel%==4 start "" "C:\Windows\System32\SystemPropertiesPerformance.exe"
if %errorlevel%==5 goto togglewinstartmenu
if %errorlevel%==6 goto changedefaultshell
if %errorlevel%==7 goto main
goto personalization

:togglewinstartmenu
cls
echo =====================================================================
echo                   Toggle Start Menu
echo =====================================================================
echo [1] Modern
echo [2] Classic
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 echo Modern
if %errorlevel%==2 echo Classic
goto personalization

:changedefaultshell
cls
echo =====================================================================
echo                        Change Default Shell
echo =====================================================================
echo [1] Explorer
echo [2] Custom
echo [3] Back
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d explorer.exe /f
    taskkill /f /im explorer.exe >nul 2>&1
    start explorer
)
if %errorlevel%==2 set /p shellpath=Enter shell path:
if %errorlevel%==3 goto personalization

:privacyoptions
cls
echo ======================================================================
echo                        %privacyoptions%
echo ======================================================================
echo [1] UWP Privacy Settings
echo [2] BitLocker
echo [3] Location Service
echo [4] Sensor Service
echo [5] Back to Menu
echo ======================================================================
choice /c 12345 /n
if %errorlevel%==1 start "" "ms-settings:privacy"
if %errorlevel%==2 start control /name Microsoft.BitLockerDriveEncryption
if %errorlevel%==3 goto togglelocationsvc
if %errorlevel%==4 goto sensorsvc
if %errorlevel%==5 goto main
goto privacyoptions

:togglelocationsvc
cls
echo =====================================================================
echo                   Location Service
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    sc config lfsvc start= demand
    sc start lfsvc
)
if %errorlevel%==2 (
    sc stop lfsvc
    sc config lfsvc start= disabled
)
echo %done%
pause >nul
goto privacyoptions

:sensorsvc
cls
echo =====================================================================
echo                   Sensor Service
echo =====================================================================
echo [1] %enable%
echo [2] %disable%
echo =====================================================================
choice /c 12 /n
if %errorlevel%==1 (
    sc config SensorService start= demand
    sc config SensrSvc start= demand
)
if %errorlevel%==2 (
    net stop SensorService 2>nul
    net stop SensrSvc 2>nul
    sc config SensorService start= disabled
    sc config SensrSvc start= disabled
)
echo %done%
pause >nul
goto privacyoptions

:additionaloptions
cls
echo ======================================================================
echo                        %additionaloptions%
echo ======================================================================
echo [1] ChrisTitus ToolBox
echo [2] Back to Menu
echo ======================================================================
choice /c 12 /n
if %errorlevel%==1 goto ctwtoolbox
if %errorlevel%==2 goto main
goto additionaloptions

:ctwtoolbox
cls
echo Installing ChrisTitus ToolBox...
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://christitus.com/win | iex"
goto additionaloptions

:debloat
cls
echo ==============================================================================================
echo                            %debloattitle%
echo ==============================================================================================
echo [1] Remove Cortana
echo [2] Remove OneDrive
echo [3] Remove Edge
echo [4] Disable Telemetry
echo [5] Enable Clipboard
echo [6] Disable Recall
echo [7] Disable Game Bar
echo [8] Remove Maps
echo [9] Disable Notifications
echo [0] Remove People
echo [Q] Remove Wallet
echo [W] Remove 3D Builder
echo [E] Back to Menu
echo ==============================================================================================
choice /c 1234567890QWE /n
if %errorlevel%==1 goto removecortana
if %errorlevel%==2 goto removeonedrive
if %errorlevel%==3 goto removeedge
if %errorlevel%==4 goto disabletelemetry
if %errorlevel%==5 goto clipon
if %errorlevel%==6 goto disablerecall
if %errorlevel%==7 goto disablegamebar
if %errorlevel%==8 goto removemaps
if %errorlevel%==9 goto disablenotifications
if %errorlevel%==10 goto removepeople
if %errorlevel%==11 goto removewallet
if %errorlevel%==12 goto remove3dbuilder
if %errorlevel%==13 goto main
goto debloat

:removecortana
cls
echo =====================================================================
echo                        Remove Cortana
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage -AllUsers"
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 1 /f
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removecortana

:removeonedrive
cls
echo =====================================================================
echo                        Remove OneDrive
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    taskkill /f /im OneDrive.exe 2>nul
    "%SystemRoot%\System32\OneDriveSetup.exe" /uninstall /quiet 2>nul
    rd /s /q "%UserProfile%\OneDrive" 2>nul
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    "%SystemRoot%\System32\OneDriveSetup.exe" /install /quiet
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removeonedrive

:removeedge
cls
echo =====================================================================
echo                        Remove Edge
echo =====================================================================
echo WARNING: This removes Edge browser.
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *MicrosoftEdge* | Remove-AppxPackage -AllUsers"
    powershell -Command "Get-AppxPackage *WebExperience* | Remove-AppxPackage -AllUsers"
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *MicrosoftEdge* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removeedge

:disabletelemetry
cls
echo =====================================================================
echo                        Disable Telemetry
echo =====================================================================
echo [1] Aggressive
echo [2] Moderate
echo [3] Basic
echo [4] Menu
echo =====================================================================
choice /c 1234 /n
if %errorlevel%==1 (
    sc stop DiagTrack 2>nul
    sc config DiagTrack start= disabled 2>nul
    sc stop dmwappushservice 2>nul
    sc config dmwappushservice start= disabled 2>nul
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t_REG_DWORD /d 0 /f
    sc config DiagTrack start= disabled
    echo %done%
    pause >nul
)
if %errorlevel%==3 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 1 /f
    echo %done%
    pause >nul
)
if %errorlevel%==4 goto debloat
goto disabletelemetry

:clipon
reg add "HKCU\Software\Microsoft\Clipboard" /v IsClipboardHistoryEnabled /t REG_DWORD /d 1 /f
echo %done%
pause >nul
goto debloat

:clipoff
reg add "HKCU\Software\Microsoft\Clipboard" /v IsClipboardHistoryEnabled /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto debloat

:disablerecall
cls
echo =====================================================================
echo                        Disable Recall
echo =====================================================================
echo [1] Disable
echo [2] Enable
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows AI" /v AllowRecall /t REG_DWORD /d 0 /f
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows AI" /v AllowRecall /t REG_DWORD /d 1 /f
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto disablerecall

:disablegamebar
cls
echo =====================================================================
echo                        Disable Game Bar
echo =====================================================================
echo [1] Disable
echo [2] Enable
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    reg add "HKCU\Software\Microsoft\GameBar" /v ShowGameBar /t REG_DWORD /d 0 /f
    sc config XblAuthManager start= disabled 2>nul
    sc config XblGameSave start= disabled 2>nul
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    reg add "HKCU\Software\Microsoft\GameBar" /v ShowGameBar /t REG_DWORD /d 1 /f
    sc config XblAuthManager start= demand 2>nul
    sc config XblGameSave start= demand 2>nul
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto disablegamebar

:removemaps
cls
echo =====================================================================
echo                        Remove Maps
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage -AllUsers"
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *Microsoft.WindowsMaps* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removemaps

:disablenotifications
cls
echo =====================================================================
echo                        Disable Notifications
echo =====================================================================
echo [1] Disable
echo [2] Enable
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v Enabled /t REG_DWORD /d 0 /f
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v Enabled /t REG_DWORD /d 1 /f
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto disablenotifications

:removepeople
cls
echo =====================================================================
echo                        Remove People
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage -AllUsers"
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *Microsoft.People* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removepeople

:removewallet
cls
echo =====================================================================
echo                        Remove Wallet
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage -AllUsers"
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto removewallet

:remove3dbuilder
cls
echo =====================================================================
echo                        Remove 3D Builder
echo =====================================================================
echo [1] Remove
echo [2] Restore
echo [3] Menu
echo =====================================================================
choice /c 123 /n
if %errorlevel%==1 (
    powershell -Command "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage -AllUsers"
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    powershell -Command "Get-AppxPackage -AllUsers *Microsoft.3DBuilder* | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml' }"
    echo %done%
    pause >nul
)
if %errorlevel%==3 goto debloat
goto remove3dbuilder

:cleaner
cls
echo ==============================================================================================
echo                            %cleanertitle%
echo ==============================================================================================
echo [1] Clean Temp Files
echo [2] Clean Windows Update
echo [3] Clean Recycle Bin
echo [4] Clean Thumbnails
echo [5] Flush DNS
echo [6] Clean All
echo [7] Back to Menu
echo ==============================================================================================
choice /c 1234567 /n
if %errorlevel%==1 goto cleantempfiles
if %errorlevel%==2 goto cleanwinupdate
if %errorlevel%==3 goto cleanrecycle
if %errorlevel%==4 goto cleanthumbs
if %errorlevel%==5 goto cleandns
if %errorlevel%==6 goto cleanall
if %errorlevel%==7 goto main
goto cleaner

:cleantempfiles
cls
echo Cleaning temp files...
del /s /f /q %TEMP%\* 2>nul
del /s /f /q C:\Windows\Temp\* 2>nul
del /s /f /q C:\Windows\Prefetch\* 2>nul
del /s /f /q %LOCALAPPDATA%\Temp\* 2>nul
echo %done%
pause >nul
goto cleaner

:cleanwinupdate
cls
echo Cleaning Windows Update...
net stop wuauserv 2>nul
net stop bits 2>nul
rd /s /q C:\Windows\SoftwareDistribution\Download 2>nul
net start wuauserv 2>nul
net start bits 2>nul
echo %done%
pause >nul
goto cleaner

:cleanrecycle
cls
echo Cleaning Recycle Bin...
powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
echo %done%
pause >nul
goto cleaner

:cleanthumbs
cls
echo Cleaning thumbnails...
del /s /f /q %LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db 2>nul
echo %done%
pause >nul
goto cleaner

:cleandns
ipconfig /flushdns
echo %done%
pause >nul
goto cleaner

:cleanall
cls
echo Cleaning all...
call :cleantempfiles
call :cleanwinupdate
call :cleanrecycle
call :cleanthumbs
call :cleandns
echo %done%
pause >nul
goto cleaner

:systemtools
cls
echo ==============================================================================================
echo                            %toolstitle%
echo ==============================================================================================
echo [1] System File Checker         [6] Services Manager
echo [2] DISM Repair                 [7] Event Viewer
echo [3] Check Disk                  [8] Resource Monitor
echo [4] Disk Cleanup                [P] Process List (Detailed)
echo [5] Device Manager              [N] Network Connections
echo [R] %regsearch%                 [9] Back to Menu
echo ==============================================================================================
choice /c 123456789PNR /n
if %errorlevel%==1 goto runsfc
if %errorlevel%==2 goto rundism
if %errorlevel%==3 goto chkdsk
if %errorlevel%==4 goto diskcleanup
if %errorlevel%==5 start devmgmt.msc
if %errorlevel%==6 start services.msc
if %errorlevel%==7 start eventvwr.msc
if %errorlevel%==8 start resmon.exe
if %errorlevel%==9 goto main
if %errorlevel%==10 goto processlist
if %errorlevel%==11 goto netconnections
if %errorlevel%==12 goto regsearch
goto systemtools

:netconnections
cls
echo =====================================================================
echo                   Active Network Connections
echo =====================================================================
powershell -NoProfile -Command "Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State, @{Name='Process';Expression={(Get-Process -Id $_.OwningProcess).ProcessName}} | Sort-Object State | Format-Table -AutoSize"
pause
goto systemtools

:processlist
cls
echo =====================================================================
echo                   Detailed Process List
echo =====================================================================
powershell -NoProfile -Command "Get-Process | Select-Object Id, ProcessName, @{Name='CPU(s)';Expression={$_.CPU}}, @{Name='RAM(MB)';Expression={[math]::Round($_.WorkingSet / 1MB, 2)}} | Sort-Object CPU -Descending | Select-Object -First 20 | Format-Table -AutoSize"
pause
goto systemtools

:regsearch
cls
echo =====================================================================
echo                   %regsearch%
echo =====================================================================
set /p searchterm=Enter search term (e.g., "MTR"):
if not defined searchterm goto systemtools
echo %YELLOW%Searching HKEY_CURRENT_USER...%RESET%
powershell -NoProfile -Command "Get-ChildItem -Path HKCU:\ -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Name -like '*%searchterm%*' -or $_.GetValueNames() -match '%searchterm%' } | Select-Object Name"
pause
goto systemtools

:runsfc
cls
echo Running System File Checker...
sfc /scannow
echo %done%
pause >nul
goto systemtools

:rundism
cls
echo Running DISM Repair...
DISM /Online /Cleanup-Image /RestoreHealth
echo %done%
pause >nul
goto systemtools

:chkdsk
cls
echo =====================================================================
echo                   Check Disk
echo =====================================================================
set /p driveletter=Enter drive letter (e.g., C):
if not defined driveletter set driveletter=C
chkdsk %driveletter%: /f /r
echo %done%
pause >nul
goto systemtools

:diskcleanup
cleanmgr /d C
goto systemtools

:networktools
cls
echo ==============================================================================================
echo                            %networktitle%
echo ==============================================================================================
echo [1] Flush DNS
echo [2] Reset Winsock
echo [3] Reset TCP/IP
echo [4] Release/Renew IP
echo [5] Network Status
echo [6] IP Configuration
echo [7] %dnschanger%
echo [8] %speedtest%
echo [9] Back to Menu
echo ==============================================================================================
choice /c 123456789 /n
if %errorlevel%==1 (
    ipconfig /flushdns
    echo %done%
    pause >nul
)
if %errorlevel%==2 (
    netsh winsock reset
    echo %done%
    pause >nul
)
if %errorlevel%==3 (
    netsh int ip reset
    echo %done%
    pause >nul
)
if %errorlevel%==4 (
    ipconfig /release
    ipconfig /renew
    echo %done%
    pause >nul
)
if %errorlevel%==5 (
    ipconfig
    pause >nul
)
if %errorlevel%==6 (
    ipconfig /all
    pause >nul
)
if %errorlevel%==7 goto dnschanger
if %errorlevel%==8 goto speedtest
if %errorlevel%==9 goto main
goto networktools

:dnschanger
cls
echo =====================================================================
echo                   %dnschanger%
echo =====================================================================
echo [1] Cloudflare (1.1.1.1)
echo [2] Google (8.8.8.8)
echo [3] Quad9 (9.9.9.9)
echo [4] Reset to Auto (DHCP)
echo [5] Back
echo =====================================================================
choice /c 12345 /n
if %errorlevel%==1 powershell -NoProfile -Command "$adapters = Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}; foreach ($a in $adapters) { Set-DnsClientServerAddress -InterfaceAlias $a.Name -ServerAddresses ('1.1.1.1','1.0.0.1') }"
if %errorlevel%==2 powershell -NoProfile -Command "$adapters = Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}; foreach ($a in $adapters) { Set-DnsClientServerAddress -InterfaceAlias $a.Name -ServerAddresses ('8.8.8.8','8.8.4.4') }"
if %errorlevel%==3 powershell -NoProfile -Command "$adapters = Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}; foreach ($a in $adapters) { Set-DnsClientServerAddress -InterfaceAlias $a.Name -ServerAddresses ('9.9.9.9','149.112.112.112') }"
if %errorlevel%==4 powershell -NoProfile -Command "$adapters = Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}; foreach ($a in $adapters) { Set-DnsClientServerAddress -InterfaceAlias $a.Name -ResetServerAddresses }"
if %errorlevel%==5 goto networktools
echo %done%
pause >nul
goto networktools

:speedtest
cls
echo =====================================================================
echo                   %speedtest%
echo =====================================================================
echo Running download speed test (10MB test file)...
powershell -NoProfile -Command "$start = Get-Date; Invoke-WebRequest -Uri 'https://speed.hetzner.de/10MB.bin' -OutFile 'speedtest.tmp'; $end = Get-Date; $speed = [math]::Round((10 / ($end - $start).TotalSeconds) * 8, 2); Write-Host \"Estimated Speed: $speed Mbps\"; Remove-Item 'speedtest.tmp'"
pause >nul
goto networktools

:gamingopt
cls
echo ==============================================================================================
echo                            %gamingtitle%
echo ==============================================================================================
echo [1] Ultimate Performance Plan
echo [2] Enable Game Mode
echo [3] Reduce Input Lag (Reg)
echo [4] Disable Fullscreen Optimizations
echo [5] %processopt%
echo [6] Back to Menu
echo ==============================================================================================
choice /c 123456 /n
if %errorlevel%==6 goto main
if %errorlevel%==5 (
    echo Setting priority for common launchers...
    powershell -NoProfile -Command "Get-Process steam, 'EpicGamesLauncher', 'Origin', 'GalaxyClient', 'Battle.net' -ErrorAction SilentlyContinue | ForEach-Object { $_.PriorityClass = 'High'; Write-Host \"Set $($_.Name) to High\" }"
    echo %done%
    pause >nul
    goto gamingopt
)
if %errorlevel%==4 reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
if %errorlevel%==3 (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 20 /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 20 /f
    reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9012038010000000 /f
)
if %errorlevel%==2 reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f
if %errorlevel%==1 powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo %done%
pause >nul
goto gamingopt


:sysinfodash
cls
echo ==============================================================================================
echo                           %sysinfotitle%
echo ==============================================================================================
echo Fetching system information...
echo.

for /f "tokens=2 delims==" %%A in ('wmic os get Caption /value') do set "osname=%%A"
for /f "tokens=2 delims==" %%A in ('wmic os get OSArchitecture /value') do set "osarch=%%A"
for /f "tokens=2 delims==" %%A in ('wmic os get Version /value') do set "osver=%%A"

for /f "tokens=2 delims==" %%A in ('wmic cpu get Name /value') do set "cpuname=%%A"

for /f "usebackq" %%A in (`powershell -NoProfile -Command "[math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB, 2)"`) do set "totalram=%%A"
for /f "usebackq" %%A in (`powershell -NoProfile -Command "[math]::Round((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1024 / 1024, 2)"`) do set "freeram=%%A"
for /f "usebackq" %%A in (`powershell -NoProfile -Command "$os = Get-CimInstance Win32_OperatingSystem; [math]::Round((($os.TotalVisibleMemorySize - $os.FreePhysicalMemory) / $os.TotalVisibleMemorySize) * 100, 1)"`) do set "ramusageperc=%%A"

for /f "tokens=2 delims==" %%A in ('wmic path win32_VideoController get name /value') do set "gpuname=%%A"

for /f "tokens=2 delims==" %%A in ('wmic baseboard get product /value') do set "moboname=%%A"
for /f "tokens=2 delims==" %%A in ('wmic bios get name /value') do set "biosname=%%A"

for /f "usebackq" %%A in (`powershell -NoProfile -Command "[math]::Round((Get-CimInstance Win32_LogicalDisk -Filter 'DeviceID=\"C:\"').Size / 1GB, 2)"`) do set "disksize=%%A"
for /f "usebackq" %%A in (`powershell -NoProfile -Command "[math]::Round((Get-CimInstance Win32_LogicalDisk -Filter 'DeviceID=\"C:\"').FreeSpace / 1GB, 2)"`) do set "diskfree=%%A"

for /f "usebackq" %%A in (`powershell -NoProfile -Command "(Get-CimInstance Win32_Processor | Measure-Object -Property LoadPercentage -Average).Average"`) do set "cpuusageperc=%%A"

echo [OS]    %osname% %osarch% (Build %osver%)
echo [CPU]   %cpuname% (%cpuusageperc%%% Usage)
echo [GPU]   %gpuname%
echo [MOBO]  %moboname% (BIOS: %biosname%)
echo [RAM]   %totalram% GB Total (%freeram% GB Free - %ramusageperc%%% Used)
echo [Disk]  C: %disksize% GB Total (%diskfree% GB Free)
echo.
echo [Uptime]
powershell -NoProfile -Command "$uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime; Write-Host \"$($uptime.Days) Days, $($uptime.Hours) Hours, $($uptime.Minutes) Minutes\""
echo ==============================================================================================
echo Press any key to go back...
pause >nul
goto main

:securitycenter
cls
echo ==============================================================================================
echo                           %sectitle%
echo ==============================================================================================
echo [1] Enable Firewall             [4] Defender Quick Scan
echo [2] Disable Firewall            [5] Defender Deep Scan
echo [3] %portscan%                  [6] Privacy Hardening
echo.
echo [7] Back to Menu
echo ==============================================================================================
choice /c 1234567 /n
if %errorlevel%==1 netsh advfirewall set allprofiles state on
if %errorlevel%==2 netsh advfirewall set allprofiles state off
if %errorlevel%==3 goto detailedportscan
if %errorlevel%==4 start MpCmdRun.exe -Scan -ScanType 1
if %errorlevel%==5 start MpCmdRun.exe -Scan -ScanType 2
if %errorlevel%==6 goto privacyhardening
if %errorlevel%==7 goto main
echo %done%
pause >nul
goto securitycenter

:detailedportscan
cls
echo =====================================================================
echo                   %portscan%
echo =====================================================================
netstat -abno | findstr "LISTENING"
pause
goto securitycenter

:privacyhardening
cls
echo =====================================================================
echo                   Privacy Hardening
echo =====================================================================
echo Applying privacy tweaks...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSamples" /t REG_DWORD /d 0 /f
echo %done%
pause >nul
goto securitycenter
