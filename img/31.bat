@echo off
setlocal enabledelayedexpansion

rem Navigate to the directory containing the files
cd /d C:\Users\raduf\OneDrive\Desktop\codrops projects\MotionTrailProject\img

rem Counter variable for numbering
set counter=1

rem Iterate over each file in the directory
for %%F in (*) do (
    rem Check if the item is a file
    if %%~aF EQU -A (
        rem Construct the new file name with a numbered format and the ".jpg" extension
        set "new_name=!counter!.jpg"
        
        rem Rename the file
        ren "%%F" "!new_name!"
        
        rem Increment the counter
        set /a counter+=1
    )
)

endlocal
