# update sysytem before installatin
sudo pacman -Syu --noconfirm

# install git
sudo pacman -Sy git --noconfirm

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# install nvim
yay -S bob --noconfirm
bob install nightly
bob use nightly

# switch to zsh and install oh-my-zsh + plugins
yay -S zsh --noconfirm
yay -S ttf-meslo-nerd-font-powerlevel10k --noconfirm
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install nodejs, nvm (node version manager), yarn
yay -S nodejs --noconfirm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
yay -S npm --noconfirm
npm install -g yarn

# Essentials
yay -S telegram-desktop --noconfirm
yay -S spotify --noconfirm
yay -S steam --noconfirm
yay -S discord --noconfirm
yay -S nvidia-settings --noconfirm

# Other related
yay -S zenpower3 --noconfirm
yay -S btop --noconfirm
yay -S bat --noconfirm
yay -S discord --noconfirm
yay -S nemo --noconfirm
yay -S eza --noconfirm
yay -S fastfetch --noconfirm
yay -S fnott --noconfirm
yay -S goverlay --noconfirm
yay -S net-tools --noconfirm
yay -S noto-fonts-cjk --noconfirm
yay -S openrgb --noconfirm
yay -S pavucontrol --noconfirm
yay -S prismlauncher --noconfirm
yay -S pastel --noconfirm
yay -S rbenv --noconfirm
yay -S rustup --noconfirm
yay -S timeshift --noconfirm
yay -S tldr --noconfirm
yay -S ttf-meslo-nerd --noconfirm
yay -S ttf-mononoki-nerd --noconfirm
yay -S waybar --noconfirm
yay -S wget --noconfirm
yay -S wlogout --noconfirm
yay -S z --noconfirm
yay -S zen-browser-bin --noconfirm
yay -S wl-clipboard --noconfirm
yay -S tmux --noconfirm
yay -S stow --noconfirm
yay -S rofi --noconfirm
yay -S playerctl --noconfirm
yay -S ghostty --noconfirm
yay -S atuin --noconfirm

git clone https://nuznhy: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@github.com/nuznhy/dotfiles.git

cd ~/dotfiles
stow . -t ~ 
