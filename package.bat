@echo off
chcp 65001 > nul
title Neverseen Messenger Packager
echo ========================================
echo    NEVERSEEN MESSENGER - PACKAGER
echo ========================================
echo.

mvn clean package

if %errorlevel% neq 0 (
    echo ERROR: Ошибка при создании JAR-файла
    pause
    exit /b 1
)

echo.
echo JAR-файл создан: target/neverseen-messenger-1.0-SNAPSHOT.jar
echo.
echo Для запуска используйте: java -jar target/neverseen-messenger-1.0-SNAPSHOT.jar
echo.
pause