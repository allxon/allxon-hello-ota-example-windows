@echo off

:start

echo "Installing..."
SET DEST=%temp%\allxonHelloOTA

mkdir "%DEST%"

robocopy "." "%DEST%" playAscii.bat
robocopy "allxonAscii" "%DEST%\allxonAscii" /E

robocopy "." "%userprofile%\desktop" HelloAllxon.bat

echo "Install finishded!"

call "%userprofile%\desktop\HelloAllxon.bat"

:end
