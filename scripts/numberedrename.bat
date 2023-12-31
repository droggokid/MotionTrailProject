@echo off
setlocal enabledelayedexpansion

set "directory=C:\Users\raduf\OneDrive\Desktop\codrops projects\MotionTrailProject\img"

cd %directory%

set count=1
for %%f in (*) do (
    ren "%%f" "!count!%%~xf"
    set /a count+=1
)
