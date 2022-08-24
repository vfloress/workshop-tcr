@echo off

call gradlew.bat -q :test

if %ERRORLEVEL% GEQ 1 (
  echo ===================
  echo Oh no! Revert 😩
  call git checkout src\main
) ELSE (
  echo ===================
  echo 🙌 Let's commit! 😎
  call git add src\main
  call git commit -m "Wip"
)
