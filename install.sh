sudo apt install -y gdb gcc g++ python3 python3-pip build-essential  python3-dev git libssl-dev libffi-dev 
ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip
pip uninstall -y enum34

#pip configure
mkdir ~/.pip 
touch ~/.pip/pip.conf 
cat <<EOT >> ~/.pip/pip.conf
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com
EOT

pip3 install capstone
pip3 install ropgadget
## install pwndbg
cd ~/
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd ~/
## install gef
cd ~/
git clone https://github.com/hugsy/gef
cd ~/

## 

#setup tools
pip3 install -U setuptools
pip3 install --upgrade pip
pip3 install --upgrade pwntools

# install peda
git clone https://github.com/longld/peda.git ~/peda
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py

cat <<EOT >> ~/.bashrc
function gdba(){
    echo "source ~/peda/peda.py" > ~/.gdbinit
    gdb $@
}
function gdbf(){
    echo "source ~/gef/gef.py" > ~/.gdbinit
    gdb $@
}
function gdbpwn(){
    echo "source ~/peda/peda.py" > ~/.gdbinit
    gdb $@
}
EOT


