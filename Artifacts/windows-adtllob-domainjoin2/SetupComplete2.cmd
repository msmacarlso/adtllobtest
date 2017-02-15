ECHO SetupComplete2.cmd BEGIN >> %windir%\Panther\WaSetup.log

ECHO Enable local admin BEGIN >> %windir%\Panther\WaSetup.log
PowerShell.exe -ExecutionPolicy RemoteSigned "& '%~dp0EnableRemoteDesktop.ps1'"
ECHO Enable local admin END >> %windir%\Panther\WaSetup.log

ECHO SetupComplete2.cmd END >> %windir%\Panther\WaSetup.log
