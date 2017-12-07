@echo off

SET JAVA_9=C:\Program Files\Java\jdk-9.0.1
SET JAVA_8=C:\Program Files\Java\jdk1.8.0_151


2>NUL CALL:CASE_%1%
IF ERRORLEVEL 1 CALL :DEFAULT_CASE

java -version
EXIT /B

:CASE_8
:CASE_JAVA8
:CASE_java8
:CASE_1.8
    echo Switching to Java 8
    SET JAVA_HOME=%JAVA_8%
    SET "PATH=%JAVA_8%\bin;%PATH%"
    GOTO END_CASE

:DEFAULT_CASE
    echo Switching to Java 9
    SET JAVA_HOME=%JAVA_9%
    SET "PATH=%JAVA_9%\bin;%PATH%"
    GOTO END_CASE

:END_CASE
    VER > NUL # reset ERRORLEVEL
    GOTO :EOF