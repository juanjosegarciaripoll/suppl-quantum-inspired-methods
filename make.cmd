@echo off
if "%1" == "all" (
    python -c "import exportnb; import glob; exportnb.export_notebooks(glob.glob('*.ipynb'),verbose=True); quit()"
)
if "%1" == "clean" (
    rmdir /S /Q seemps data
    del /Q core_mps.py core.py mpi*.py job*.py
)
if "%1" == "cleanup" (
    for %%i in (*.ipynb); do jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace "%%i"
)
