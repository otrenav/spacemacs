#
# Install Spacemacs
#
# This file assumes that my Spacemacs configuration repository
# is cloned in it's usual place (~/Projects/system/spacemacs),
# and that we want to delete all existing configurations for
# Emacs and Spacemacs.
#

rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/Projects/system/spacemacs/spacemacs ~/.spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/Projects/system/spacemacs/private ~/.emacs.d/private
