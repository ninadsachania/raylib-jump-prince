@echo off
setlocal

if not exist build mkdir build || exit /b 1

pushd build || exit /b 1

cl /std:c++14 /Zi /W4 /Fe:main.exe ..\source\main.cpp ^
	/I..\raylib_win64_msvc16\include ^
	/link ^
	/LIBPATH:..\raylib_win64_msvc16\lib ^
	raylib.lib user32.lib gdi32.lib winmm.lib shell32.lib msvcrt.lib ^
	/NODEFAULTLIB:libcmt /NODEFAULTLIB:msvcrtd || exit /b 1

copy ..\source_art\player.png  . || exit /b 1
copy ..\source_art\tilemap.png . || exit /b 1

popd

echo.
echo Build complete!
