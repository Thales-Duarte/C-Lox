@echo off
setlocal enabledelayedexpansion

REM Caminho para o executável
set LOX=.\c-lox.exe

REM Função para calcular diferença de tempo em centésimos de segundo
set "getTimeDiff=for /f "tokens=1-4 delims=:.," %%a in ("!startTime!") do (set /a startCentesimos=(((%%a*60+%%b)*60+%%c)*100+%%d)) & for /f "tokens=1-4 delims=:.," %%a in ("!endTime!") do (set /a endCentesimos=(((%%a*60+%%b)*60+%%c)*100+%%d)) & set /a diffCentesimos=!endCentesimos!-!startCentesimos! & set /a diffSegundos=!diffCentesimos!/100 & set /a diffRestante=!diffCentesimos!%%100)"

echo ===========================
echo Testando exemplos essenciais
echo ===========================
echo.

REM --- Exemplo 1 ---
echo --- Executando: examples\print\lists_test.lox ---
set startTime=%TIME%
%LOX% examples\print\lists_test.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

REM --- Exemplo 2 ---
echo.
echo --- Executando: examples\print\dict_test.lox ---
set startTime=%TIME%
%LOX% examples\print\dict_test.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\print\enum_test.lox ---
set startTime=%TIME%
%LOX% examples\print\enum_test.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\print\lambda_test.lox ---
set startTime=%TIME%
%LOX% examples\print\lambda_test.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\class\custom_operators.lox ---
set startTime=%TIME%
%LOX% examples\class\custom_operators.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\function\recursion.lox ---
set startTime=%TIME%
%LOX% examples\function\recursion.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\if\if.lox ---
set startTime=%TIME%
%LOX% examples\if\if.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\while\simple.lox ---
set startTime=%TIME%
%LOX% examples\while\simple.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\variable\global.lox ---
set startTime=%TIME%
%LOX% examples\variable\global.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\operator\add.lox ---
set startTime=%TIME%
%LOX% examples\operator\add.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\class\empty.lox ---
set startTime=%TIME%
%LOX% examples\class\empty.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\closure\nested_closure.lox ---
set startTime=%TIME%
%LOX% examples\closure\nested_closure.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\return\in_function.lox ---
set startTime=%TIME%
%LOX% examples\return\in_function.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\string\literals.lox ---
set startTime=%TIME%
%LOX% examples\string\literals.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\bool\equality.lox ---
set startTime=%TIME%
%LOX% examples\bool\equality.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo.
echo --- Executando: examples\nil\literal.lox ---
set startTime=%TIME%
%LOX% examples\nil\literal.lox
set endTime=%TIME%
!getTimeDiff!
echo Tempo: !diffSegundos!.!diffRestante!s

echo ===========================
echo Testes finalizados
echo ===========================
pause 