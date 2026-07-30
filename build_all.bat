@echo off
echo ================================================
echo       LLVM Obfuscator Complete Build
echo ================================================

REM 1. Build Backend (C++)
echo.
echo [1/4] Building Backend...
call build.bat
if %ERRORLEVEL% NEQ 0 (
    echo Warning: Backend build failed. LLVM not found.
    echo Skipping backend and proceeding to frontend build...
)

REM 2. Build Frontend (C# / Avalonia)
echo.
echo [2/4] Building Frontend...
pushd gui
call build.bat
popd
if %ERRORLEVEL% NEQ 0 (
    echo Error: Frontend build failed
    exit /b 1
)

REM 3. Create Release Package
echo.
echo [3/4] Packaging Release...
if not exist release mkdir release
if exist release rmdir /s /q release
mkdir release

REM Copy Frontend files
echo Copying Frontend files from gui\publish-avalonia...
xcopy /E /I /Y "gui\publish-avalonia\*" "release\"

REM Copy Backend executable to the release folder
echo Copying backend executable...
if exist output\llvm-obfuscator.exe (
    copy /Y output\llvm-obfuscator.exe release\llvm-obfuscator.exe
) else (
    echo Warning: output\llvm-obfuscator.exe not found. Skipping.
)

REM 4. Verification
echo.
echo [4/4] Verifying Package...
if exist release\LLVMObfuscatorAvalonia.exe (
    if exist release\llvm-obfuscator.exe (
        echo Success: All components found in release/
    ) else (
        echo Warning: Backend executable missing in release/
    )
) else (
    echo Warning: Frontend executable missing in release/
)

echo.
echo ================================================
echo           Build Completed Successfully
echo ================================================
echo Output Directory: %CD%\release
echo.
REM pause
