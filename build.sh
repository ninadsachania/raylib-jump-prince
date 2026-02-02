#! /bin/bash
set -e

mkdir -p build

pushd build

gcc -g -Wall -Wextra -std=c++14 ../source/main.cpp -o main \
    -I../raylib_linux_amd64/include \
    -L../raylib_linux_amd64/lib \
    -l:libraylib.a -lm

cp ../source_art/player.png  .
cp ../source_art/tilemap.png .

popd

echo ""
echo "Build complete!"
