@echo off
echo Starting Jupyter Notebook for Plant Disease Prediction...
echo.
echo IMPORTANT: Make sure you have placed the dataset folders (train, valid, test)
echo in this directory before running Training.ipynb
echo.
set PYTHON="C:\Users\SURAJ YADAV\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.11_qbz5n2kfra8p0\python.exe"
set JUPYTER="C:\Users\SURAJ YADAV\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.11_qbz5n2kfra8p0\LocalCache\local-packages\Python311\Scripts\jupyter-notebook.exe"
cd /d "%~dp0"
%PYTHON% -m notebook
pause
