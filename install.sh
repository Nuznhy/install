#!/usr/bin/env bash
set -e
sudo -v

# update sysytem before installatin
sudo pacman -Syu --noconfirm

# install git
sudo pacman -S git base-devel make --noconfirm

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# install nvim
yay -S bob --noconfirm
bob install stable 
bob use stable 

# switch to zsh and install oh-my-zsh + plugins and apply dotfiles
yay -S stow
git clone https://github.com/Nuznhy/dotfiles.git
cd dotfiles
stow -t ~ */
cd ..

# install nodejs, nvm (node version manager), yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# nvm install 22
# npm install -g yarn

# Essentials
yay -S telegram-desktop --noconfirm
yay -S spotify --noconfirm
yay -S steam --noconfirm
yay -S discord --noconfirm
yay -S nvidia-settings --noconfirm
yay -S nautilus --noconfirm
yay -S ghostty --noconfirm
yay -S ghostty-nautilus --noconfirm
yay -S zen-browser-bin --noconfirm
yay -S postman-bin --noconfirm

# Hyprland specific
yay -S noctalia-shell --noconfirm
yay -S hyprland-preview-share-picker-git --noconfirm
yay -S rofi --noconfirm
yay -S wl-clipboard --noconfirm
yay -S cliphist --noconfirm
yay -S wlsunset --noconfirm
yay -S net-tools --noconfirm
yay -S slurp --noconfirm
yay -S hyprpolkitagent --noconfirm
yay -S gnome-calculator --noconfirm

# Other related
yay -S zenpower3 --noconfirm
yay -S adw-gtk-theme --noconfirm

# Video and photos
yay -S celluloid --noconfirm

# Terminal utils
yay -S btop --noconfirm
yay -S bat --noconfirm
yay -S eza --noconfirm
yay -S skim --noconfirm
yay -S fastfetch --noconfirm
yay -S rbenv --noconfirm
yay -S rustup --noconfirm
yay -S tldr --noconfirm
yay -S pastel --noconfirm
yay -S zoxide --noconfirm
yay -S atuin --noconfirm
yay -S wget --noconfirm
yay -S tmux --noconfirm
yay -S fd --noconfirm
yay -S jq --noconfirm
yay -S keychain --noconfirm
yay -S lua51 luarocks --noconfirm
yay -S tree-sitter-cli --noconfirm
yay -S wlsunset --noconfirm
yay -S yazi --noconfirm

yay -S openrgb --noconfirm
yay -S goverlay --noconfirm
yay -S mangohud --noconfirm
yay -S pavucontrol --noconfirm
yay -S gpu-screen-recorder --noconfirm

# Minecraft ?
yay -S prismlauncher --noconfirm

# fonts
yay -S ttf-meslo-nerd --noconfirm
yay -S ttf-mononoki-nerd --noconfirm
yay -S noto-fonts-cjk --noconfirm

# Enable multilib and install steam
sudo sed -i '/^\#\[multilib\]$/,/^\#Include = \/etc\/pacman.d\/mirrorlist$/ s/^#//' /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S steam

systemctl --user restart xdg-desktop-portal
systemctl --user restart xdg-desktop-portal-hyprland

yay -S zsh --noconfirm
yay -S ttf-meslo-nerd-font-powerlevel10k --noconfirm
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
