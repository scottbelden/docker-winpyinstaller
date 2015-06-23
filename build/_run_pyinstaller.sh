if [ -f "/source/requirements.txt" ]; then
  wine /root/.wine/drive_c/Python27/python.exe -m pip install -r /source/requirements.txt
fi

wine /root/.wine/drive_c/Python27/Scripts/pyinstaller.exe -F /script
cp /dist/* /artifact

