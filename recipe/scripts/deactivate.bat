@REM Restore previous env vars if they were set.

@set "HDF5_PLUGIN_PATH="
@if defined _CONDA_SET_HDF5_PLUGIN_PATH (
  @set "HDF5_PLUGIN_PATH=%_CONDA_SET_HDF5_PLUGIN_PATH%"
  @set "_CONDA_SET_HDF5_PLUGIN_PATH="
)
