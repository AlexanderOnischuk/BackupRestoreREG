@echo off
TITLE Console for Backup/Restore registry & COLOR 0A
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: BackupRestoreREG.bat - batch script with menu for BACKUPING/RESTORING all registry hives
:: ALExorON (c), 07.01.2018 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SET dest=%SystemRoot%\System32\config\RegBack\
SET par= /y
SET t=timeout /T 10
SET e=echo ...

echo Current date: %date%
echo .............................
echo Enter 1 for BACKUP registry
echo Enter 2 for RESTORE registry
set /p "param=Enter number: "
goto l%param% 


:::::::::::::::::::::::::::::::::::::::::::::
:: LABEL1 - jump to backuping registry hives
:::::::::::::::::::::::::::::::::::::::::::::
:l1
echo ................................
echo Current hive: HKEY_CLASSES_ROOT & REG EXPORT HKEY_CLASSES_ROOT %dest%HCR%par%
%e%
echo Current hive: HKEY_CURRENT_USER & REG EXPORT HKEY_CURRENT_USER %dest%HCU%par%
%e%
echo Current hive: HKEY_LOCAL_MACHINE & REG EXPORT HKEY_LOCAL_MACHINE %dest%HLM%par%
%e%
echo Current hive: HKEY_USERS & REG EXPORT HKEY_USERS %dest%HU%par%
%e%
echo Current hive: HKEY_USERS & REG EXPORT HKEY_CURRENT_CONFIG %dest%HCC%par%
%e%
echo All hives succesfully backuped into: %dest%
echo .
echo Exit.
%t%
goto :EOF


:::::::::::::::::::::::::::::::::::::::::::::
:: LABEL2 - jump to restoring registry hives
:::::::::::::::::::::::::::::::::::::::::::::
:l2
echo -------------------------------------------------------------
echo If this function in runned system not working,
echo You need use command in offline-system: reg import [path]FILE
echo -------------------------------------------------------------
@FOR %%x IN (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) DO @IF EXIST "%%x:\Windows\system32\winver.exe" (@echo System path: %SystemRoot%\ & SET xx=%%x:\)
echo Disk %xx% is a online
SET dest=%xx%Windows\System32\config\RegBack\
echo Correct destination hives: %dest%

%e%
echo Current hive: HKEY_CLASSES_ROOT & REG IMPORT %dest%HCR
%e%
echo Current hive: HKEY_CURRENT_USER & REG IMPORT %dest%HCU
%e%
echo Current hive: HKEY_LOCAL_MACHINE & REG IMPORT %dest%HLM
%e%
echo Current hive: HKEY_USERS & REG IMPORT %dest%HU
%e%
echo Current hive: HKEY_CURRENT_CONFIG & REG IMPORT %dest%HCC
%e%
echo Exit.
%t%
