#!/bin/bash
set -e
[ -v HDF5_PLUGIN_PATH ] && export __CONDA_SHLVL_${CONDA_SHLVL}_HDF5_PLUGIN_PATH=${HDF5_PLUGIN_PATH}
export HDF5_PLUGIN_PATH=${CONDA_PREFIX}/lib/plugins:${HDF5_PLUGIN_PATH:-/usr/local/hdf5/lib/plugin}
