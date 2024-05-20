@echo off
:LOOP
for /f tokens^=* %%f in ('where allxonAscii:*') do (
    CALL :PLAY "%%f"
)

GOTO :LOOP

:PLAY
type "%~1"
for /l %%x in (1, 1, 4000) do (
    break
)
cls
EXIT /B