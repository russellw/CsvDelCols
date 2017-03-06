set version=1.0

"\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe" CsvDelCols.sln /p:Configuration=Release /p:Platform="Any CPU"
if errorlevel 1 goto :eof

md CsvDelCols-%version%
copy App.config CsvDelCols-%version%
copy LICENSE CsvDelCols-%version%
copy README.md CsvDelCols-%version%
copy bin\Release\CsvDelCols.exe CsvDelCols-%version%

del CsvDelCols-%version%.zip
7z a CsvDelCols-%version%.zip CsvDelCols-%version%
7z l CsvDelCols-%version%.zip

rd /q /s CsvDelCols-%version%
