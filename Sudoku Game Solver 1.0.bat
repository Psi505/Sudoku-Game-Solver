@Echo off
@Title Sudoku Game Solver
@Setlocal enabledelayedexpansion
@Mode 55,21

if not exist %temp% (md %temp%)

fn.dll cursor 0
color 1a
echo.
echo.
echo     €€€€   €    €   €€€€‹     ‹€€‹   €  €ﬂ  €    €
echo    €       €    €    €   €   ‹ﬂ  ﬂ‹  € €    €    €
echo     ﬂ€€‹   €    €    €    €  €    €  €€     €    €
echo         €  €‹  ‹€    €   €   ﬂ‹  ‹ﬂ  € €    €‹  ‹€
echo     €€€€    ﬂ€€ﬂ €  €€€€ﬂ     ﬂ€€ﬂ   €  €‹   ﬂ€€ﬂ €
echo.
echo.
echo             ‹€€€‹    €€    €‹   ‹€  €€€€
echo            ‹ﬂ   ﬂ   €  €   € € € €  €
echo            €   ‹‹  ‹€€€€‹  €  €  €  €€€€
echo            ﬂ‹   €  €    €  €     €  €
echo             ﬂ€€€ﬂ  €    €  €     €  €€€€   v1.0
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
set %%j%%i=€
cls
echo.
echo.
echo       A  B  C   D  E  F   G  H  I
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    1 ≥!A1! ≥!B1! ≥!C1! ≥≥!D1! ≥!E1! ≥!F1! ≥≥!G1! ≥!H1! ≥!I1! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    2 ≥!A2! ≥!B2! ≥!C2! ≥≥!D2! ≥!E2! ≥!F2! ≥≥!G2! ≥!H2! ≥!I2! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    3 ≥!A3! ≥!B3! ≥!C3! ≥≥!D3! ≥!E3! ≥!F3! ≥≥!G3! ≥!H3! ≥!I3! ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    4 ≥!A4! ≥!B4! ≥!C4! ≥≥!D4! ≥!E4! ≥!F4! ≥≥!G4! ≥!H4! ≥!I4! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    5 ≥!A5! ≥!B5! ≥!C5! ≥≥!D5! ≥!E5! ≥!F5! ≥≥!G5! ≥!H5! ≥!I5! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    6 ≥!A6! ≥!B6! ≥!C6! ≥≥!D6! ≥!E6! ≥!F6! ≥≥!G6! ≥!H6! ≥!I6! ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    7 ≥!A7! ≥!B7! ≥!C7! ≥≥!D7! ≥!E7! ≥!F7! ≥≥!G7! ≥!H7! ≥!I7! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    8 ≥!A8! ≥!B8! ≥!C8! ≥≥!D8! ≥!E8! ≥!F8! ≥≥!G8! ≥!H8! ≥!I8! ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    9 ≥!A9! ≥!B9! ≥!C9! ≥≥!D9! ≥!E9! ≥!F9! ≥≥!G9! ≥!H9! ≥!I9! ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
echo.
echo.
set /p "%%j%%i=+ %%j%%i :> "
if "!%%j%%i!"=="€" (set "%%j%%i= ") else (echo %%j%%i>>%temp%\W)
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
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    1 ≥%A1% ≥%B1% ≥%C1% ≥≥%D1% ≥%E1% ≥%F1% ≥≥%G1% ≥%H1% ≥%I1% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    2 ≥%A2% ≥%B2% ≥%C2% ≥≥%D2% ≥%E2% ≥%F2% ≥≥%G2% ≥%H2% ≥%I2% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    3 ≥%A3% ≥%B3% ≥%C3% ≥≥%D3% ≥%E3% ≥%F3% ≥≥%G3% ≥%H3% ≥%I3% ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    4 ≥%A4% ≥%B4% ≥%C4% ≥≥%D4% ≥%E4% ≥%F4% ≥≥%G4% ≥%H4% ≥%I4% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    5 ≥%A5% ≥%B5% ≥%C5% ≥≥%D5% ≥%E5% ≥%F5% ≥≥%G5% ≥%H5% ≥%I5% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    6 ≥%A6% ≥%B6% ≥%C6% ≥≥%D6% ≥%E6% ≥%F6% ≥≥%G6% ≥%H6% ≥%I6% ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
echo      ⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø⁄ƒƒ¬ƒƒ¬ƒƒø
echo    7 ≥%A7% ≥%B7% ≥%C7% ≥≥%D7% ≥%E7% ≥%F7% ≥≥%G7% ≥%H7% ≥%I7% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    8 ≥%A8% ≥%B8% ≥%C8% ≥≥%D8% ≥%E8% ≥%F8% ≥≥%G8% ≥%H8% ≥%I8% ≥
echo      √ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥√ƒƒ≈ƒƒ≈ƒƒ¥
echo    9 ≥%A9% ≥%B9% ≥%C9% ≥≥%D9% ≥%E9% ≥%F9% ≥≥%G9% ≥%H9% ≥%I9% ≥
echo      ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ¿ƒƒ¡ƒƒ¡ƒƒŸ
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