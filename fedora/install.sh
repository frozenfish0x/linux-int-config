# bash
#mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup
#mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup

#wget -O /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo
#wget -O /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo

# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
 sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install -y  fedora-workstation-repositories
sudo dnf update -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
yes | sudo dnf install -y  google-chrome-stable
packages=("vlc" "vim"  "nodejs" "code" "neofetch" "microsoft-edge-stable" "git" )  # or code-insiders


yes | sudo dnf install -y "${packages[@]}"

#sudo dnf clean packages


