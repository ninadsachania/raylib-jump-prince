@echo off

if not exist build mkdir build

pushd build

cl /std:c++14 /Zi /W4 /Fe:main.exe ..\source\main.cpp ^
	/I..\raylib_win64_msvc16\include ^
	/link ^
	/LIBPATH:..\raylib_win64_msvc16\lib ^
	raylib.lib user32.lib gdi32.lib winmm.lib shell32.lib msvcrt.lib ^
	/NODEFAULTLIB:libcmt /NODEFAULTLIB:msvcrtd

popd

echo.
echo Build complete!
