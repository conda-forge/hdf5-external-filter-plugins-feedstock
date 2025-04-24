mkdir build
cd build
cmake %CMAKE_ARGS% ^
  -G Ninja ^
  -DENABLE_BITSHUFFLE_PLUGIN=no ^
  -DENABLE_LZ4_PLUGIN=no ^
  -DENABLE_BZIP2_PLUGIN=yes ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ^
  .. || exit /b 1
ninja install || exit /b 1

mkdir %PREFIX%\lib\hdf5\plugin
copy %PREFIX%\lib\plugins\h5bz2.dll %PREFIX%\lib\hdf5\plugin || exit /b 1
