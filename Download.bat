@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/MedoGhnam/SWS/refs/heads/main/setup.py
curl -s -L -o Show.bat https://raw.githubusercontent.com/MedoGhnam/SWS/refs/heads/main/Show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/tollboxlap09/loop/refs/heads/main/loop.bat
echo Downloading sws.zip to desktop...
curl -s -L -o "%desktop%\SWS.zip" https://swspro.alwaysdata.net/SWS.zip
echo Extracting sws.zip to %desktop%\sws ...
powershell -Command "Expand-Archive -Path '%desktop%\SWS.zip' -DestinationPath '%desktop%\sws' -Force"

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.litemanager.com/soft/litemanager_5.zip', 'litemanager.zip')"
powershell -Command "Expand-Archive -Path 'litemanager.zip' -DestinationPath '%cd%'"
pip install pyautogui --quiet
choco install vcredist-all --no-progress
curl -s -L -o "%desktop%\anydesk.exe" https://download.anydesk.com/AnyDesk.exe
curl -s -L -o "%desktop%\ixBrowser.exe" https://cdn.ixbrowser.com/ixbrowser/version/ixBrowser_Setup_2_3_30.exe
curl -s -L -o "%desktop%\VSCODE.exe" https://vscode.download.prss.microsoft.com/dbazure/download/stable/e54c774e0add60467559eb0d1e229c6452cf8447/VSCodeUserSetup-x64-1.97.2.exe
curl -s -L -o "%desktop%\Winrar.exe" https://www.rarlab.com/rar/winrar-x64-621.exe
curl -s -L -o wall.bat https://raw.githubusercontent.com/tollboxlap09/Wallpaper/refs/heads/main/wall.bat
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile '%desktop%\VMQuickConfig.exe'"
"%desktop%\Winrar.exe" /S
del "%desktop%\Winrar.exe"
del /f "%desktop%\Epic Games Launcher.lnk"
del /f "%desktop%\Unity Hub.lnk"
net user runneradmin MEDO-X
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "LiteManager Pro - Server.msi"
python setup.py
call wall.bat
