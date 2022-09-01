cd {Folder-python}
:: Folder-python  in upgrade
IF EXIST "upgrade" (
cd {location-file-python}
:: change file python to original name
ren "upgrade.apk" "upgrade.pyw"
:: go to python.exe
cd "{Folder-python}"
:: run file python by python.exe
python.exe "{location-file-python}"
) ELSE (
:: if Folder upgrade not unzip
ren "update" "update.zip"
:: unzip update.zip
powershell -Command "Expand-Archive update.zip -DestinationPath {location_unzip}"
ren "update.zip" "update"
cd {location-file-python}
ren "upgrade.game" "upgrade.pyw"
cd "{Folder-python}"
python.exe "{location-file-python}"
)
exit 0