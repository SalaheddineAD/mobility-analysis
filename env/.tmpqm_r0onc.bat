@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "C:\ProgramData\Miniconda3\condabin\conda.bat" activate "D:\CARRIER\AkumenIA\datascience_mobility\env"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@D:\CARRIER\AkumenIA\datascience_mobility\env\python.exe -Wi -m compileall -q -l -i C:\Users\salah\AppData\Local\Temp\tmp_dacrs44 -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
