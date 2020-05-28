@echo off
set hse_path="E:\Code\Cavendish\Sprint\HSE_Latest_Main\"
echo %hse_path%
set /p var= Above hercules search engine location location is correct?[Y/N]: 
if %var%== Y goto run_hse
if not %var%== Y goto changePath
:changePath
set /p var=enter full directoy location [like E:\Code\Cavendish\Sprint\HSE_Latest_Main\] 
cd %var%
npm run x 
:run_hse
cd %hse_path%
npm run x