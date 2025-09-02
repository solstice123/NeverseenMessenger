@echo off
chcp 65001 > nul
title Neverseen Messenger (with JavaFX modules)
echo ========================================
echo    NEVERSEEN MESSENGER - MODULE LAUNCHER
echo ========================================
echo.

REM Укажите правильный путь к вашей установке JavaFX
set JAVAFX_PATH=C:\path\to\javafx-sdk-17.0.2\lib

if not exist "%JAVAFX_PATH%" (
    echo ERROR: Путь к JavaFX не найден: %JAVAFX_PATH%
    echo Установите JavaFX SDK и укажите правильный путь в этом bat-файле
    echo Скачайте с: https://gluonhq.com/products/javafx/
    pause
    exit /b 1
)

java --module-path "%JAVAFX_PATH%" --add-modules javafx.controls,javafx.fxml -cp "target\classes" com.neverseen.messenger.NeverseenApp

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Не удалось запустить приложение
    echo.
    pause
    exit /b 1
)

pause