@echo off
set LIB=%LIB%;C:\Program Files\Microsoft SDKs\Windows\v7.0\Lib\x64;
"C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\bin\amd64\ml64.exe" HelloWorld.asm /link /subsystem:console /defaultlib:kernel32.lib /entry:main
echo.