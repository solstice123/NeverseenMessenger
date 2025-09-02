@echo off
chcp 65001 > nul
title Neverseen Messenger Builder
echo ========================================
echo    NEVERSEEN MESSENGER - BUILDER
echo ========================================
echo.

mvn clean compile

if %errorlevel% neq 0 (
    echo ERROR: Ошибка при сборке проекта
    pause
    exit /b 1
)

echo.
echo Сборка завершена успешно!
echo.
pause