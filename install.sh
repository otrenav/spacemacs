#
# Install Spacemacs
#
# This file assumes that my Spacemacs configuration repository
# is cloned in it's usual place (~/Projects/system/spacemacs),
# and that we want to delete all existing configurations for
# Emacs and Spacemacs.
#

# Remove Ubuntu Emacs starters
sudo rm /usr/share/applications/emacs25.desktop
sudo rm /usr/share/applications/emacs25-term.desktop

# Link our own Emacs starter
mkdir -p /home/otrenav/.local/share/applications/
ln -s /home/otrenav/code/system/spacemacs/emacs25.desktop /home/otrenav/.local/share/applications/emacs25.desktop

# Requirements
if [[ "$unamestr" == 'Linux' ]]; then
    sudo apt-get install hunspell aspell pylint tidy
elif [[ "$unamestr" == 'Darwin' ]]; then
    hombrew install hunspell aspell pylint tidy-html5
fi
sudo npm install -g tern js-beautify eslint jshint typescript tslint typescript-formatter csslint jsonlint
sudo pip install autoflake hy jedi radon flake8 ipython importmagic epc

# Installation
rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/code/system/spacemacs/spacemacs ~/.spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/code/system/spacemacs/private ~/.emacs.d/private

rm -rf ~/.emacs.d/.cache/bookmarks
mkdir ~/.emacs.d/.cache/
ln -s ~/code/system/spacemacs/bookmarks ~/.emacs.d/.cache/bookmarks
ln -s ~/code/system/spacemacs/abbrev_defs ~/.emacs.d/.cache/abbrev_defs
