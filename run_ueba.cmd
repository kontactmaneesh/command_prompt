@echo off
set ueba_path="E:\Code\Cavendish\Sprint\ueba-master\"
echo %ueba_path%
set /p var= ueba path location is correct?[Y/N]: 
if %var%== Y goto run_ueba
if not %var%== Y goto changePath
:changePath
set /p var=enter full directoy location [like E:\Code\Cavendish\Sprint\ueba-master\] 
cd %var%
npm run start
:run_ueba
cd %ueba_path%
npm run start