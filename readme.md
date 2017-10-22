# Dotfiles

`yaourt -S xorg-xmodmap neovim google-chrome termite ttf-fantasque-sans-mono ttf-hack visual-studio-code --noconfirm`

`git clone https://github.com/schoettkr/dotfiles.git`

`cd dotfiles && cp .config/* ~/.config/`


before this might wanna run 
`cd /usr/share/kservicetypes5/`

`sudo ln -s kwinscript.desktop kwin-script.desktop`

then:

`git clone https://github.com/Jazqa/kwin-quarter-tiling.git`

`plasmapkg2 --type kwinscript -i kwin-quarter-tiling`

`mkdir -p ~/.local/share/kservices5`

`ln -sf ~/.local/share/kwin/scripts/quarter-tiling/metadata.desktop ~/.local/share/kservices5/kwin-script-quarter-tiling.desktop`

## Requisites
`sudo pacman -S yaourt compton xorg-xmodmap feh redshift termite pcmanfm rofi neovim`

`yaourt -S xcwd-git google-chrome postman ttf-hack xtitle otf-overpass bumblebee-status-git`

## Steps to take
Symlink nvim folder to .vim
`ln -s ~/.vim ~/.config/nvim` alternatively `ln -s ~/.vimrc ~/.config/nvim/init.vim`


