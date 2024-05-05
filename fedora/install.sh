# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

dnf check-update
sudo dnf -y install mysql-community-server --nogpgcheck
sudo dnf install -y  fedora-workstation-repositories
sudo dnf update -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
sudo dnf install -y  google-chrome-stable
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
packages=("vlc" "vim"  "nodejs" "code" "neofetch"  "git" "mysql" "go" "obs-studio" )  # or code-insiders

for pkg in "${packages[@]}";do
	echo "install $pkg ...."
	sudo dnf install -y "$pkg"
done

echo "====ok!===="
#sudo dnf clean packages


