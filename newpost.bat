@echo off
setlocal

:: --- Script to create a new Jekyll blog post for Randall Reader ---
:: Usage: newpost "This is my awesome post title"

:: 1. Check if a title was provided
if "%~1"=="" (
    echo ERROR: You must provide a title for the post.
    echo.
    echo Usage: %0 "Your Post Title"
    exit /b 1
)

:: 2. Check if the _posts directory exists, create it if not
if not exist "_posts" (
    echo "_posts" directory not found. Creating it for you...
    mkdir "_posts"
)

echo Creating new post...

:: 3. Get the current date in YYYY-MM-DD format
for /f "tokens=2 delims==" %%I in ('wmic os get LocalDateTime /value') do set datetime=%%I
set "YYYY=%datetime:~0,4%"
set "MM=%datetime:~4,2%"
set "DD=%datetime:~6,2%"
set "TODAY=%YYYY%-%MM%-%DD%"

:: 4. Get the title from the command line arguments
set "POST_TITLE=%*"
:: Remove quotes from the title for the front matter
set "POST_TITLE=%POST_TITLE:"=%"

:: 5. "Dashify" the title to create a URL-friendly slug
set "SLUG=%POST_TITLE: =-%"
:: Remove any characters that aren't safe for filenames
set "SLUG=%SLUG:?=%"
set "SLUG=%SLUG::=%"
set "SLUG=%SLUG:/=%"
set "SLUG=%SLUG:\=%"
set "SLUG=%SLUG:<=%"
set "SLUG=%SLUG:>=%"
set "SLUG=%SLUG:|=%"

:: 6. Create the full filename and path
set "FILENAME=%TODAY%-%SLUG%.md"
set "FILEPATH=_posts\%FILENAME%"

echo Filename: %FILENAME%

:: 7. Write the Jekyll front matter header to the new file
echo --- > "%FILEPATH%"
echo layout: post >> "%FILEPATH%"
echo title:  "%POST_TITLE%" >> "%FILEPATH%"
echo --- >> "%FILEPATH%"
echo. >> "%FILEPATH%"

:: 8. Open the new file in Notepad for editing
echo Opening file in Notepad...
start "" notepad "%FILEPATH%"

echo.
echo Done.

endlocal