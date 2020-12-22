sudo apt install gdb gcc g++ python3 python3-pip build-essential  python3-dev git libssl-dev libffi-dev 

 
#pip configure
mkdir ~/.pip 
touch ~/.pip/pip.conf 
cat <<EOT >> ~/.pip/pip.conf
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com
EOT

cd ~/
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

#setup tools
pip3 install -U setuptools
pip3 install --upgrade pip
pip3 install --upgrade pwntools
