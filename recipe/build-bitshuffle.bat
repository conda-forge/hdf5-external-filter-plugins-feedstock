mkdir build
cd build
cmake %CMAKE_ARGS% ^
  -G Ninja ^
  -DENABLE_BITSHUFFLE_PLUGIN=yes ^
  -DENABLE_LZ4_PLUGIN=no ^
  -DENABLE_BZIP2_PLUGIN=no ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
  ..  || exit /b 1
ninja install || exit /b 1

mkdir %PREFIX%\lib\hdf5\plugin
copy %PREFIX%\lib\plugins\h5bshuf.dll %PREFIX%\lib\hdf5\plugin || exit /b 1
