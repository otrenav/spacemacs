#
# Install Spacemacs
#
# This file assumes that my Spacemacs configuration repository
# is cloned in it's usual place (~/Projects/system/spacemacs),
# and that we want to delete all existing configurations for
# Emacs and Spacemacs.
#

# Requirements
if [[ "$unamestr" == 'Linux' ]]; then
    sudo apt-get install hunspell aspell pylint tidy
elif [[ "$unamestr" == 'Darwin' ]]; then
    hombrew install hunspell aspell pylint tidy-html5
fi
sudo npm install -g tern js-beautify eslint jshint typescript tslint typescript-formatter csslint jsonlint
sudo pip install autoflake hy jedi radon flake8 ipython

# Installation
rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/Projects/system/spacemacs/spacemacs ~/.spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/Projects/system/spacemacs/private ~/.emacs.d/private

rm -rf ~/.emacs.d/.cache/bookmarks
ln -s ~/Projects/system/spacemacs/bookmarks ~/.emacs.d/.cache/bookmarks
