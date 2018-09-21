
sudo yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel  python-devel mysql-devel
cd /tmp
wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tgz --no-check-certificate
tar xvf Python-3.6.6.tgz && cd Python-3.6.6
./configure --prefix=/opt/python3.6 --exec-prefix=/opt/python3.6 --enable-optimizations  --with-ensurepip=install
make -j8 build_all && sudo make -j8 install
sudo /opt/python3.6/bin/pip3.6 install --upgrade pip

