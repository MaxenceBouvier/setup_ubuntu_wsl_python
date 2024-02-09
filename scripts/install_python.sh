# A script for doanloading and installing python from source
export PYTHON_VERSION=3.10.10
export PYTHON_MAJOR=3.10

# Download python
cd pythons
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
tar -xvf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION

# Build and Install 
./configure --enable-optimizations CFLAGS="-fPIC"
# Notem using the default configuration, this script will install python in /usr/local/bin
make -j 8
sudo make altinstall
# altinstall is used instead of install because it will not replace the default python installation

# Add python to PATH
echo "export PATH=/usr/local/bin/python$PYTHON_MAJOR:\$PATH" >> ~/.bashrc_usr