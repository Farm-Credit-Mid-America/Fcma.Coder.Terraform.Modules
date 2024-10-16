# install node
echo "Start node install..."

NODE_SOURCE_URL="https://deb.nodesource.com/setup_${INSTALL_VERSION}.x"

curl -fsSL $NODE_SOURCE_URL | sudo -E bash - &&\
sudo apt-get $QUIET_APT_INSTALL update && \
sudo apt-get $QUIET_APT_INSTALL install -y nodejs