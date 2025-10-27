taskkill.exe /F /IM "portal2.exe"

SET "dir=D:\SteamLibrary\steamapps\common\Portal 2"

"%dir%\bin\vpk.exe" ".\pak01_dir"
copy /y ".\pak01_dir.vpk" "%dir%\pak01_dir.vpk"

xcopy /y /e ".\portal2_dlc3" "%dir%\portal2_dlc3"

tar -cf hud.zip portal2_dlc3 pak01_dir.vpk

start steam://rungameid/620