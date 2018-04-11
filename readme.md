# Migrate this setup
1. Have the destination where the repo is cloned to already ignored in the source repo `echo ".dots" >> .gitignore`
2. `git clone --bare <git-repo-url> $HOME/.dots`
3. Add this alias to `.zshrc` 
`alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'`
4. Checkout the actual content from the bare repo to $HOME `dots checkout`
5. Optional: Move already existing (conflicting) files in a backup folder `mkdir -p .dots-backup && \
dots checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dots-backup/{}` and rerun `dots checkout`
6. `dots --local status.showUntrackedFiles no`


7. TODO: Create simple script that does this

Also see https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

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


