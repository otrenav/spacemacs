#
# Install Spacemacs in Linux
#

# Remove Ubuntu Emacs starters
sudo rm /usr/share/applications/emacs.desktop
sudo rm /usr/share/applications/emacs25.desktop
sudo rm /usr/share/applications/emacs-term.desktop
sudo rm /usr/share/applications/emacs25-term.desktop
sudo cp /home/otrenav/code/system/spacemacs/emacs.desktop /usr/share/applications/emacs.desktop

# Requirements
sudo apt install hunspell aspell pylint tidy
npm install -g tern js-beautify eslint jshint typescript eslint typescript-formatter csslint jsonlint
sudo apt install python3-hy python3-jedi python3-flake8 python3-flake8-polyfill python3-ipython

# Installation
rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/code/system/spacemacs/spacemacs ~/.spacemacs

git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/code/system/spacemacs/private ~/.emacs.d/private

rm -rf ~/.emacs.d/.cache/bookmarks
mkdir ~/.emacs.d/.cache/
ln -s ~/code/system/spacemacs/bookmarks ~/.emacs.d/.cache/bookmarks
ln -s ~/code/system/spacemacs/abbrev_defs ~/.emacs.d/.cache/abbrev_defs
