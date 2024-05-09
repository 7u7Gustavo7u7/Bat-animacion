@echo off
setlocal enabledelayedexpansion

rem Definir la longitud de la barra de carga
set "bar_length=20"

rem Definir los caracteres para la barra de carga
set "bar_char=▓"
set "empty_char=-"

rem Borrar la pantalla
cls

echo Iniciando la animación de la barra de carga...

rem Bucle para simular la barra de carga
for /l %%i in (1,1,%bar_length%) do (
    rem Calcular el porcentaje completado
    set /a "percentage=(%%i * 100) / %bar_length%"
    
    rem Construir la barra de carga
    set "bar="
    for /l %%j in (1,1,%%i) do set "bar=!bar!!bar_char!"
    for /l %%j in (%%i,1,%bar_length%) do set "bar=!bar!!empty_char!"
    
    rem Mostrar la barra de carga
    echo Progreso: [!bar!] !percentage!%
    
    rem Esperar 1 segundos antes de mostrar el siguiente progreso
    timeout /t 1 /nobreak >nul
    rem Borrar la línea anterior
    set "backspace="
    for /l %%b in (1,1,%bar_length%+20) do set "backspace=!backspace!\b"
    echo !backspace!
)

echo Animación de la barra de carga completada.








