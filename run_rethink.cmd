@echo off
set rethink_db_path="E:\Code\Cavendish\Sprint\rethinkdb-2.3.6\"
echo %rethink_db_path%
set /p var= rethink DB location is correct?[Y/N]: 
if %var%== Y goto run_rethinkDB
if not %var%== Y goto changePath
:changePath
set /p var=enter full directoy location [like E:\Code\Cavendish\Sprint\rethinkdb-2.3.6] 
cd %var%
rethinkdb.exe 
:run_rethinkDB
cd %rethink_db_path%
rethinkdb.exe 


