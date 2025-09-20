@echo off
setlocal
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%
set GRADLE_HOME=%APP_HOME%\gradle
set GRADLE_USER_HOME=%USERPROFILE%\.gradle
set DEFAULT_JVM_OPTS=
set GRADLE_OPTS=

if exist "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" (
    set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
    java %DEFAULT_JVM_OPTS% %GRADLE_OPTS% -classpath %CLASSPATH% org.gradle.wrapper.GradleWrapperMain %*
) else (
    echo Gradle wrapper JAR not found. Please run 'gradle wrapper' to generate it.
    exit /b 1
)
