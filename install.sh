alias por='export http_proxy="http://127.0.0.1:1081/" https_proxy="http://127.0.0.1:1081/"'
alias ppor='export http_proxy="" https_proxy=""'
export http_proxy="http://127.0.0.1:1081/" https_proxy="http://127.0.0.1:1081/"

mkdir -p reversetools
cd reversetools
wget https://raw.githubusercontent.com/slimm609/checksec.sh/master/checksec
chmod a+x checksec

mv checksec ~
sudo apt install -y gdb gcc g++ python3 python3-pip build-essential  python3-dev git libssl-dev libffi-dev 
ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip
pip uninstall -y enum34

#pip configure
mkdir ~/.pip 
touch ~/.pip/pip.conf 
[ ! -f ~/.pip/pip.conf ] &&cat <<EOT >> ~/.pip/pip.conf
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com
EOT
pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/



pip3 install capstone
pip3 install ropgadget
pip3 install cemu
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
wget -O ~/gef.py -q http://gef.blah.cat/py

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


