@echo off

Title BChat
Color 0F
rem


echo After Logged In Try /c For a List of Commands
Echo Login?

ECHO 1 - Login
ECHO 2 - Signup
Echo 3 - Guest


CHOICE /C:123
IF ERRORLEVEL 1 SET M=1
IF ERRORLEVEL 2 SET M=2
IF ERRORLEVEL 3 SET M=3

IF %M%==1 GOTO Login
IF %M%==2 GOTO SProfile
IF %M%==3 GOTO GuestLogin



:GuestLogin



find /c "#" msg.txt
cls
if %errorlevel% equ 1 goto notfound
   
goto found
    


    



:notfound



set /p Encrypt=Please Enter a Temporary UserName:
set /p InVar=%Encrypt%:
@echo #%Encrypt%:%InVar%> msg.txt

@echo Welcome Guest %Encrypt%! > msg.txt



copy /y nul %Encrypt%.usr >nul



:StartConvo




set InVar=


set /p InVar=%Encrypt%:%=%

If /I "%InVar%"=="/c" goto Commands 
If /I "%InVar%"=="/cls" goto CryptoClear
If /I "%InVar%"=="/Releave" goto Kick
If /I "%InVar%"=="/Test" goto Test
If /I "%InVar%"=="/Tuna" goto Tuna
If /I "%InVar%"=="/SProfile" goto Usrchk
If /I "%InVar%"=="/Login" goto Login
If /I "%InVar%"=="/USRC" goto USRC
If /I "%InVar%"=="/msg" goto msg


find /c "%Encrypt%" kick.txt >NUL

if %errorlevel% equ 0 goto Kicked


find /c "%Encrypt%" T.txt >NUL

if %errorlevel% equ 0 goto Tunaed

@echo #%Encrypt%:%InVar%>> msg.txt


find /c ":" %Encrypt%.usr >NUL

if %errorlevel% equ 0 goto privtxt


 




GOTO StartConvo


:Commands
@echo off

Echo "/USRC" To Check if A UserName Has Been Taken
Echo "/cls" To Clear View Terminal
echo "/Msg" To Private Message A User
Echo "/Tuna" To Attack people with tuna

goto StartConvo


:found
set /p Encrypt=Please Enter a Temporary UserName:
copy /y nul %Encrypt%.usr >nul
@echo %Encrypt% >%Encrypt%.usr
@echo Welcome Guest %Encrypt%! >> msg.txt

goto StartConvo




:CryptoClear
call CC.bat
goto startconvo

:Kick
set /p KikVar=Person to Kick:
@echo %KikVar%> kick.txt
goto startconvo


:Kicked
echo You have been kicked.
pause 5
echo( > kick.txt
exit

:Test
@echo off
cecho {0C}%Encrypt%{#}
REM Print ASCII char 0x07 (beep) 
cecho {\u07 \u07}
cecho This {black on blue}word{#} is black on a blue background
goto startconvo

:Tuna
set /p TVar=Person to Slap With Tuna:
@echo %TVar%> T.txt
goto startconvo

:Tunaed
echo You have been brutally assaulted with various species of tuna.

echo( > T.txt
goto startconvo

:Usrchk
set /p UsrchkVar=Check for UserName:

IF EXIST %UsrchkVar%.bchat (
Goto Invalad
) ELSE (
goto Valad
)







:Invalad
Echo Your Username is Not Available
goto startconvo


:Valad
Echo Your Username is Available
goto SProfile

:SProfile





Call BCU1
Call BC1

goto startconvo

:Login


@echo off
setlocal  ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION


:mainmenu
set savefile=on
::set Encrypt=Nothing
(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12)
(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6)
(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G)
echo Please Enter a Username:
set /p Encrypt=
cls
set Encrypt2=%Encrypt%
set "EncryptOut="
:encrypt2
set char=%Encrypt2:~0,1%
set Encrypt2=%Encrypt2:~1%
set EncryptOut=%EncryptOut%!CHAR[%char%]!
if not "%Encrypt2%"=="" goto encrypt2

echo.

set string=%EncryptOut%
set temp_str=%string%
set str_len=0
:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )
echo.

if "%savefile%"=="on" echo.%EncryptOut%>>%~d0%~p0%Encrypt%.tbchat



@echo off
setlocal  ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION


:mainmenu
set savefile=on
::set Encrypt=Nothing
(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12)
(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6)
(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G)
set /p UVar=Please ReEnter Your UserName:


echo Please Enter a Password:
set /p PEncrypt=
cls
set Encrypt2=%PEncrypt%
set "EncryptOut="
:encrypt2
set char=%Encrypt2:~0,1%
set Encrypt2=%Encrypt2:~1%
set EncryptOut=%EncryptOut%!CHAR[%char%]!
if not "%Encrypt2%"=="" goto encrypt2


set string=%EncryptOut%
set temp_str=%string%
set str_len=0
:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )


if "%savefile%"=="on" echo.%EncryptOut%>>%~d0%~p0%Uvar%.tbchat

fc /b %Uvar%.tbchat %Uvar%.bchat > nul
if errorlevel 1 goto files_differ
echo Logged In
Enjoy Your Stay > %Encrypt%.txt
copy /y nul %Encrypt%.usr >nul
@echo %Encrypt%! is Online! >> msg.txt

goto end
:files_differ
echo Wrong Password or Username
pause 2
goto end
:end

break>%Uvar%.tbchat 

goto startconvo

:USRC

:Usrchk
set /p UsrchkVar=Check for UserName:

IF EXIST %UsrchkVar%.bchat (
Goto iNoValad
) ELSE (
goto iValad
)

:iValad
Username Open!



:iNoValad
Username Not Available!
goto startconvo







:msg
set /p msgvar=Person to PM:
set /p PMsgvar=Message to Send:

@echo %Encrypt% Whispers:%PMsgvar% > %msgvar%.usr
goto startconvo


:privtxt
chgcolor 1
type %Encrypt%.usr

pause 5
chgcolor 0f
echo( > %Encrypt%.usr
goto startconvo











