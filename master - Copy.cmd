@echo off
set /p var=Are you want to run rethink DB?[Y/N]: 
if %var%== Y goto rethink_run
if not %var%== Y goto next
:rethink_run
start run_rethink.cmd
:next
set /p var=Are you want to run HSE?[Y/N]: 
if %var%== Y goto hse_run
if not %var%== Y goto next_ueba
:hse_run
start run_HSE.cmd
:next_ueba
set /p var=Are you want to run UEBA?[Y/N]: 
if %var%== Y goto run_ueba
if not %var%== Y exit
:run_ueba
start run_ueba.cmd
