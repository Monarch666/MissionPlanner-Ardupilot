@echo off
echo ========================================================
echo   Mission Planner ArduPilot - Automated Build
echo ========================================================
where msbuild >nul 2>nul
if %errorlevel% neq 0 (
    echo [!] MSBuild not found in PATH.
    pause
    exit /b 1
)
msbuild MissionPlanner.sln /p:Configuration=Release /p:Platform="Any CPU" /m
pause
