@echo off

:start

echo "Installing..."
SET DEST=%temp%\allxonHelloOTA

mkdir "%DEST%"

xcopy playAscii.bat "%DEST%" /I /Y
xcopy allxonAscii "%DEST%\allxonAscii" /I /Y

xcopy HelloAllxon.bat "%userprofile%\desktop" /Y

echo "Install finishded!"

call "%userprofile%\desktop\HelloAllxon.bat"

:end
