rem 请核对你的texturepacker安装路径

@echo off
  
path %path%;"D:\installApp\texturePacker\bin"
  
for /f "usebackq tokens=*" %%d in (`dir /s /b *.pvr *.pvr.ccz *.pvr.gz`) do (
    TexturePacker.exe "%%d" --sheet "%%~dpnd.png" --data "%%~dpnd.plist" --opt RGBA8888 --allow-free-size --algorithm Basic --no-trim --dither-fs
    @REM TexturePacker.exe "%%d" --sheet "%%~dpnd.png" --format cocos2d --padding 0 --opt RGBA8888 --allow-free-size --algorithm MaxRects
)