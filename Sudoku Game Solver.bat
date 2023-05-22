@Echo off
@Title Sudoku Game Solver
@Setlocal enabledelayedexpansion
@Mode 55,21

if not exist %temp% (md %temp%)

fn.dll cursor 0
color 1a
echo.
echo.
echo     ÛÛÛÛ   Û    Û   ÛÛÛÛÜ     ÜÛÛÜ   Û  Ûß  Û    Û
echo    Û       Û    Û    Û   Û   Üß  ßÜ  Û Û    Û    Û
echo     ßÛÛÜ   Û    Û    Û    Û  Û    Û  ÛÛ     Û    Û
echo         Û  ÛÜ  ÜÛ    Û   Û   ßÜ  Üß  Û Û    ÛÜ  ÜÛ
echo     ÛÛÛÛ    ßÛÛß Û  ÛÛÛÛß     ßÛÛß   Û  ÛÜ   ßÛÛß Û
echo.
echo.
echo             ÜÛÛÛÜ    ÛÛ    ÛÜ   ÜÛ  ÛÛÛÛ
echo            Üß   ß   Û  Û   Û Û Û Û  Û
echo            Û   ÜÜ  ÜÛÛÛÛÜ  Û  Û  Û  ÛÛÛÛ
echo            ßÜ   Û  Û    Û  Û     Û  Û
echo             ßÛÛÛß  Û    Û  Û     Û  ÛÛÛÛ   v1.0
echo.
echo.
echo.
echo            This Was Created By Psi505 ^<2019^> 
echo.
echo.
pause>nul

:://///////////// Fill the Sudoku //////////////////::
@mode 40,27
color 1f
fn.dll cursor 100
if exist %temp%\W (del %temp%\W)
for /l %%i in (1,1,9) do (for %%j in (A B C D E F G H I) do (set "%%j%%i= "))
for /l %%i in (1,1,9) do (
for %%j in (A B C D E F G H I) do (
set %%j%%i=Û
cls
echo.
echo.
echo       A  B  C   D  E  F   G  H  I
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    1 ³!A1! ³!B1! ³!C1! ³³!D1! ³!E1! ³!F1! ³³!G1! ³!H1! ³!I1! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    2 ³!A2! ³!B2! ³!C2! ³³!D2! ³!E2! ³!F2! ³³!G2! ³!H2! ³!I2! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    3 ³!A3! ³!B3! ³!C3! ³³!D3! ³!E3! ³!F3! ³³!G3! ³!H3! ³!I3! ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    4 ³!A4! ³!B4! ³!C4! ³³!D4! ³!E4! ³!F4! ³³!G4! ³!H4! ³!I4! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    5 ³!A5! ³!B5! ³!C5! ³³!D5! ³!E5! ³!F5! ³³!G5! ³!H5! ³!I5! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    6 ³!A6! ³!B6! ³!C6! ³³!D6! ³!E6! ³!F6! ³³!G6! ³!H6! ³!I6! ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    7 ³!A7! ³!B7! ³!C7! ³³!D7! ³!E7! ³!F7! ³³!G7! ³!H7! ³!I7! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    8 ³!A8! ³!B8! ³!C8! ³³!D8! ³!E8! ³!F8! ³³!G8! ³!H8! ³!I8! ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    9 ³!A9! ³!B9! ³!C9! ³³!D9! ³!E9! ³!F9! ³³!G9! ³!H9! ³!I9! ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo.
echo.
set /p "%%j%%i=+ %%j%%i :> "
if "!%%j%%i!"=="Û" (set "%%j%%i= ") else (echo %%j%%i>>%temp%\W)
))
:://////////////////////////////////////////////////::

color 1f
fn.dll cursor 0
:bg
if "%1"=="1" (@mode 40,27) else (@mode 40,31)
cls
echo.
echo.
echo       A  B  C   D  E  F   G  H  I
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    1 ³%A1% ³%B1% ³%C1% ³³%D1% ³%E1% ³%F1% ³³%G1% ³%H1% ³%I1% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    2 ³%A2% ³%B2% ³%C2% ³³%D2% ³%E2% ³%F2% ³³%G2% ³%H2% ³%I2% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    3 ³%A3% ³%B3% ³%C3% ³³%D3% ³%E3% ³%F3% ³³%G3% ³%H3% ³%I3% ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    4 ³%A4% ³%B4% ³%C4% ³³%D4% ³%E4% ³%F4% ³³%G4% ³%H4% ³%I4% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    5 ³%A5% ³%B5% ³%C5% ³³%D5% ³%E5% ³%F5% ³³%G5% ³%H5% ³%I5% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    6 ³%A6% ³%B6% ³%C6% ³³%D6% ³%E6% ³%F6% ³³%G6% ³%H6% ³%I6% ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo      ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿ÚÄÄÂÄÄÂÄÄ¿
echo    7 ³%A7% ³%B7% ³%C7% ³³%D7% ³%E7% ³%F7% ³³%G7% ³%H7% ³%I7% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    8 ³%A8% ³%B8% ³%C8% ³³%D8% ³%E8% ³%F8% ³³%G8% ³%H8% ³%I8% ³
echo      ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´ÃÄÄÅÄÄÅÄÄ´
echo    9 ³%A9% ³%B9% ³%C9% ³³%D9% ³%E9% ³%F9% ³³%G9% ³%H9% ³%I9% ³
echo      ÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙÀÄÄÁÄÄÁÄÄÙ
echo.
echo.
if "%1"=="1" (fn.dll sprite 25 15 C0 "+ %2 => %3 " & pause>nul & goto :eof)
echo             O  Solve
echo.
echo             X  Exit
echo.
::////////////////////////////////////////////////////////::

::////////////////// Mouse Detect ////////////////////////::
for /f "tokens=*" %%a in ('fn.dll mouse') do (set X=%%a)
set y=0
if "%X%"=="26 12 1" (if not !tz!==81 (goto Solve))
if "%X%"=="28 12 1" (exit)
goto bg
:://////////////////////////////////////////////////////////::


::////////////////////// Computer Work /////////////////////::
:Solve
set /a nc+=1
call :Verif_1 %nc%
call :Verif_2 %nc%
call :Verif_3 %nc%
call :Verif_4 %nc%
call :Verif_5 %nc%
call :Verif_6 %nc%
call :Verif_7 %nc%
call :Verif_8 %nc%
call :Verif_9 %nc%
if %nc% gtr 8 (set nc=0)
set tz=0
for /f %%i in (%temp%\W) do (set /a tz+=1 & if !tz!==81 (del /q %temp%\W & goto bg & set nc=0))
goto Solve
:://////////////////////////////////////////////////////////::


:://///////////////// Verif_ln_col /////////////////////////::
:Verif
set Yo=%1
set al=%Yo:~0,1%
set nu=%Yo:~1,1%

for /l %%i in (1,1,9) do (
	if not "%%i"=="!nu!" (
		if not "!%al%%%i!"==" " (
			if !%al%%%i!==%3 (set %2=t & goto :eof)
		)
	)
)
for %%i in (A B C D E F G H I) do (
	if not "%%i"=="!al!" (
		if not "!%%i%nu%!"==" " (
			if !%%i%nu%!==%3 (set %2=t & goto :eof)
		)
	)
)
goto :eof
:://////////////////////////////////////////////////////////::


:://///////////////// Verif ////////////////////////////////::
:Verif_1
for %%i in (A B C) do (
	for %%j in (1 2 3) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (A B C) do (
	for %%j in (1 2 3) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_2
for %%i in (D E F) do (
	for %%j in (1 2 3) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (D E F) do (
	for %%j in (1 2 3) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_3
for %%i in (G H I) do (
	for %%j in (1 2 3) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (G H I) do (
	for %%j in (1 2 3) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::

:Verif_4
for %%i in (A B C) do (
	for %%j in (4 5 6) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (A B C) do (
	for %%j in (4 5 6) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_5
for %%i in (D E F) do (
	for %%j in (4 5 6) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (D E F) do (
	for %%j in (4 5 6) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_6
for %%i in (G H I) do (
	for %%j in (4 5 6) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (G H I) do (
	for %%j in (4 5 6) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::

:Verif_7
for %%i in (A B C) do (
	for %%j in (7 8 9) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (A B C) do (
	for %%j in (7 8 9) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_8
for %%i in (D E F) do (
	for %%j in (7 8 9) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (D E F) do (
	for %%j in (7 8 9) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
::::::::::::::::::::::::::::::::::::::::::::
:Verif_9
for %%i in (G H I) do (
	for %%j in (7 8 9) do (
		if %1==!%%i%%j! (goto :eof)
	)
)
set rnb=0 & set "yu=" 
for %%i in (G H I) do (
	for %%j in (7 8 9) do (
		set ext1=f
		set ext2=f
		for /f %%a in (%temp%\W) do (
			if "%%a"=="%%i%%j" (set ext1=t)
		)
		if !ext1!==f (
			call :verif %%i%%j ext2 %1
			if !ext2!==f (
				set yu=%%i%%j
				set /a rnb+=1
			)
		)
	)
)
if not !rnb!==1 (goto :eof)
echo !yu!>>%temp%\W &  set !yu!=%1& call :bg 1 !yu! %1
goto :eof
:://////////////////////////////////////////////////////////::
