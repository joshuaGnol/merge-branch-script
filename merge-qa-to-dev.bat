@echo off
set local 

git diff --quiet && git diff --cached --quiet
IF NOT %ERRORLEVEL%==0 (
    echo ---- You have uncommitted changes!----
    echo ---- Please commit or stash your changes before proceeding.----
    pause
    exit /b 1
)


echo ---- Checking out qa_p2 branch----
git checkout qa_p2
git pull

echo ---- Switching to development_p2 branch----
git checkout development_p2
git pull

echo ---- Merging qa_p2 into development_p2----
git merge qa_p2
IF %ERRORLEVEL% NEQ 0 (
    echo --- Merge conflict detected! Resolve it manually.---
    pause
    exit /b 1
)

echo ---- Pushing development_p2----
git push

echo ---- Merge complete!----

pause
endlocal
