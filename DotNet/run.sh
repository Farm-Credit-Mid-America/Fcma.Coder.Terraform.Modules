# Dotnet Install

echo "Start dotnet install..."

sudo apt-get update && \
       sudo apt-get install -y wget

sudo touch /etc/apt/preferences

echo "Package: dotnet* aspnet* netstandard*" | sudo tee -a /etc/apt/preferences > /dev/null
echo "Pin: origin \"packages.microsoft.com\"" | sudo tee -a /etc/apt/preferences > /dev/null
echo "Pin-Priority: -10 " | sudo tee -a /etc/apt/preferences > /dev/null

# Get Ubuntu version
declare repo_version=$(if command -v lsb_release &> /dev/null; then lsb_release -r -s; else grep -oP '(?<=^VERSION_ID=).+' /etc/os-release | tr -d '"'; fi)

# Download Microsoft signing key and repository
wget https://packages.microsoft.com/config/ubuntu/$repo_version/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

# Install Microsoft signing key and repository
sudo dpkg -i packages-microsoft-prod.deb

# Clean up
rm packages-microsoft-prod.deb

# Update packages
sudo apt $QUIET_APT_INSTALL update

sudo apt-get $QUIET_APT_INSTALL update && \
    sudo apt-get $QUIET_APT_INSTALL install -y dotnet-sdk-${INSTALL_VERSION}
