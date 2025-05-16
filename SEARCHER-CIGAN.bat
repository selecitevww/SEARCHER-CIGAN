@echo off

REM      BATCH FILE

chcp 65001

cls

color 70

ECHO УКАЖИТЕ ДИСК: ПРИМЕР: C

set /p "ddссk1="
set "ddссk2=%ddссk1%:"
%ddссk2%

cd "%ddссk2%\"
:loop
dir
echo Введите путь к директории в которой находятся файлы: ПРИМЕР: Users 

set /p "path1="
echo %path1%
set "path2=%path1%"
echo %path2%
cd %path2%
dir
echo Если в нужном каталоге, то введите 1, а если нет, то 3 и больше.

set /p "var1=" && cls

SET var2=2 && cls

IF %var1% GTR %var2% (
    goto loop

)


REM      BATCH FILE
echo Десcиденты! Приготовиться к поиску файла!
echo Введите название файла: Например Кошка

set /p "name3="
set "name3=%name4%"
echo %name4%


echo Введите разделитель: Например .

set /p "nameformat7="
set "nameformat7=%nameformat7%"
echo %nameformat9%

echo %nameformat9%


echo Введите формат файла: Например txt

set /p "nameformat5="
set "nameformat5=%nameformat6%"
echo %nameformat6%

echo %nameformat6%


FOR /r %%G in ("*%name4%%nameformat9%%nameformat6%") Do (@echo %%G
echo "%%G" )

pause
cls
exit
