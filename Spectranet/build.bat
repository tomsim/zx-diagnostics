@echo off
echo Building Spectranet Test ROM module...
sjasmplus testmodule1.sjasm
if %errorlevel% neq 0 goto :end
sjasmplus testmodule2.sjasm
if %errorlevel% neq 0 goto :end
echo Building installer...
sjasmplus installer.sjasm
if %errorlevel% neq 0 goto :end
bin2tap -a 32768 -b -c 32767 -o installer.tap installer.bin

:end

exit /b errorlevel
