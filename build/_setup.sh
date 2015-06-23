
# install windows python
wget https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi -O python.msi
wine msiexec -i python.msi /qn
cp msvc9compiler.py /root/.wine/drive_c/Python27/Lib/distutils/msvc9compiler.py

# copy pywin32 libs to the correct location
wget http://sourceforge.net/projects/pywin32/files/pywin32/Build%20219/pywin32-219.win32-py2.7.exe/download -O pywin32.exe
unzip -o pywin32.exe ; echo $?
cp -R PLATLIB/* /root/.wine/drive_c/Python27/Lib/site-packages
cp SCRIPTS/pywin32_postinstall.py /root/.wine/drive_c/Python27/
wine /root/.wine/drive_c/Python27/python.exe /root/.wine/drive_c/Python27/pywin32_postinstall.py -install

# install windows c compiler for python
wget http://download.microsoft.com/download/7/9/6/796EF2E4-801B-4FC4-AB28-B59FBF6D907B/VCForPython27.msi -O VCForPython27.msi
wine msiexec -i VCForPython27.msi /qn

# install pyinstaller
wine /root/.wine/drive_c/Python27/python.exe -m pip install pyinstaller





