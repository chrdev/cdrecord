set RELDIR=cdrecord-win
del /F /Q %RELDIR%.7z
copy /y LICENSE %RELDIR%\
copy /y README.md %RELDIR%\
xcopy src %RELDIR%\src /E /I /Y
7z a -mx -myx -mqs -stl %RELDIR%.7z  %RELDIR%\
