@echo off
where /q pwsh.exe
if %errorlevel% equ 0 (
    pwsh.exe -noprofile -ex unrestricted -command "${scoop-accelerator.ps1}; ${scoop-i18n.ps1}; ${scoop.ps1}" %*
) else (
    powershell -noprofile -ex unrestricted -command "${scoop-accelerator.ps1}; ${scoop-i18n.ps1}; ${scoop.ps1}"  %*
)
