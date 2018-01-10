::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbQs=
::ZQ05rAF9IAHYFVzEqQISKRhfWRSwGUza
::eg0/rx1wNQPfEVWB+kM9LVsJDCaDP2CvFoc5z6b57v7n
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQISKRhfWRTCDk6dL4Yo2tGb
::dhA7uBVwLU+EWHio0Vo/OjR6AETQbDriZg==
::YQ03rBFzNR3SWATEvEF5SA==
::dhAmsQZ3MwfNWATE1W4VMBRGYyrOfDnqV+18
::ZQ0/vhVqMQ3MEVWAtB9wekg0
::Zg8zqx1/OA3MEVWAtB9we0g0
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJG2h2XI1OidjRQqGM3ypOpc93NTZ7umMt10vccUANorD39Q=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Only backup files.
:: For Windows Task Scheduler.
:: Or compile this file to invisible_program.exe (bat to exe)
SET dest=%SystemRoot%\System32\config\RegBack\& :: destination backup files for restore

echo Current hive: HKEY_CLASSES_ROOT... & REG EXPORT HKEY_CLASSES_ROOT %dest%HCR /y & echo ...
echo Current hive: HKEY_CURRENT_USER... & REG EXPORT HKEY_CURRENT_USER %dest%HCU /y & echo ...
echo Current hive: HKEY_LOCAL_MACHINE... & REG EXPORT HKEY_LOCAL_MACHINE %dest%HLM /y & echo ...
echo Current hive: HKEY_USERS... & REG EXPORT HKEY_USERS %dest%HU /y & echo ...
echo Current hive: HKEY_USERS... & REG EXPORT HKEY_CURRENT_CONFIG %dest%HCC /y & echo ...
exit