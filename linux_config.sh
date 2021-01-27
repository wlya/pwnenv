

# ssh client keep alive
echo "TCPKeepAlive=yes" >> /etc/ssh/ssh_config
echo "ServerAliveInterval 60" >> /etc/ssh/ssh_config
echo "ServerAliveCountMax 5" >> /etc/ssh/ssh_config

