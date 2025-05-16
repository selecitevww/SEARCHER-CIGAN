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
echo Результаты будут сохранены в корень диска, то что выбрали!
echo Введите название файла c результатами поиска: Например Кошка

set /p "name3="


FOR /r %%G in ("*%name3%*") Do (@echo %%G
echo "%%G" >> "%ddссk1%:\%name3%%RANDOM%.txt"  )

pause
cls
exit
