@echo off
chcp 65001 > nul
title Neverseen Messenger (JAR)
echo ========================================
echo    NEVERSEEN MESSENGER - JAR LAUNCHER
echo ========================================
echo.

if not exist "target\neverseen-messenger-1.0-SNAPSHOT.jar" (
    echo JAR-файл не найден. Сначала выполните сборку:
    echo mvn clean package
    echo.
    pause
    exit /b 1
)

java -jar target/neverseen-messenger-1.0-SNAPSHOT.jar

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Не удалось запустить JAR-файл
    echo.
    pause
    exit /b 1
)

pause