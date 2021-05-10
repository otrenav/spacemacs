#
# Install Spacemacs in Linux
#

# Remove Ubuntu Emacs starters
sudo rm /usr/share/applications/emacs.desktop
sudo rm /usr/share/applications/emacs25.desktop
sudo rm /usr/share/applications/emacs-term.desktop
sudo rm /usr/share/applications/emacs25-term.desktop
sudo cp /home/otrenav/projects/system/spacemacs/emacs.desktop /usr/share/applications/emacs.desktop

# Requirements
sudo apt install hunspell aspell pylint tidy
npm install -g tern js-beautify eslint jshint typescript eslint typescript-formatter csslint jsonlint
sudo pip3 install autoflake hy jedi radon flake8 flake8-polyfill ipython importmagic epc

# Installation
rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/projects/system/spacemacs/spacemacs ~/.spacemacs

git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/projects/system/spacemacs/private ~/.emacs.d/private

rm -rf ~/.emacs.d/.cache/bookmarks
mkdir ~/.emacs.d/.cache/
ln -s ~/projects/system/spacemacs/bookmarks ~/.emacs.d/.cache/bookmarks
ln -s ~/projects/system/spacemacs/abbrev_defs ~/.emacs.d/.cache/abbrev_defs
