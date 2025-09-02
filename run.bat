@echo off
chcp 65001 > nul
title Neverseen Messenger Launcher
echo ========================================
echo    NEVERSEEN MESSENGER - LAUNCHER
echo ========================================
echo.

REM Проверка установленности Java
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java не установлена или не найдена в PATH
    echo Установите Java JDK 11 или выше с официального сайта:
    echo https://adoptium.net/temurin/releases/
    pause
    exit /b 1
)

REM Проверка установленности Maven
mvn -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Maven не установлен или не найден в PATH
    echo Установите Maven с официального сайта:
    echo https://maven.apache.org/download.cgi
    pause
    exit /b 1
)

echo Проверка зависимостей и сборка проекта...
echo.

REM Сборка проекта
mvn clean compile

if %errorlevel% neq 0 (
    echo ERROR: Ошибка при сборке проекта
    pause
    exit /b 1
)

echo.
echo Запуск Neverseen Messenger...
echo.

REM Запуск приложения
mvn javafx:run

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Не удалось запустить приложение
    echo.
    echo Альтернативные варианты запуска:
    echo 1. Запустите класс NeverseenApp напрямую через IDE
    echo 2. Соберите JAR: mvn clean package
    echo 3. Запустите JAR: java -jar target/neverseen-messenger-1.0-SNAPSHOT.jar
    echo.
    pause
    exit /b 1
)

pause