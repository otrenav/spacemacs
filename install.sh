#
# Install Spacemacs in Linux
#

sudo rm /usr/share/applications/emacs.desktop
sudo rm /usr/share/applications/emacs25.desktop
sudo rm /usr/share/applications/emacs-term.desktop
sudo rm /usr/share/applications/emacs25-term.desktop
sudo cp /home/otrenav/code/sys/spacemacs/emacs.desktop /usr/share/applications/emacs.desktop

rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/code/sys/spacemacs/spacemacs ~/.spacemacs
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/code/sys/spacemacs/private ~/.emacs.d/private

rm -rf ~/.emacs.d/.cache
mkdir ~/.emacs.d/.cache/
ln -s ~/code/sys/spacemacs/bookmarks ~/.emacs.d/.cache/bookmarks
ln -s ~/code/sys/spacemacs/abbrev_defs ~/.emacs.d/.cache/abbrev_defs
