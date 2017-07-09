#
# Install Spacemacs
#
# This file assumes that my Spacemacs configuration repository
# is cloned in it's usual place (~/Projects/system/spacemacs),
# and that we want to delete all existing configurations for
# Emacs and Spacemacs.
#

# ;; - Flycheck > Flymake
#    ;;
#    ;; - CSSLint  (CSS)          sudo npm install -g csslint
#    ;; - Tidy     (HTML)         sudo apt-get install tidy
#    ;;                           brew install tidy-html5
#    ;; - ESLint   (JavaScript)   sudo npm install -g eslint
#    ;; - JSONLint (JSON)         sudo npm install -g jsonlint
#    ;; - Flake8   (Python)       sudo pip install flake8
#    ;; - Pylint   (Python)       sudo apt-get install pylint
# ;; Requires:
# ;; - hunspell (sudo apt-get install hunspell)
# ;; - aspell   (sudo apt-get install aspell)
# ;; Requirements:
# ;; - Jedi     sudo pip install jedi
# ;; - Radon    sudo pip install radon
# ;; - Flake8   sudo pip install flake8
# ;; - IPython  sudo pip install ipython

# Requirements
sudo npm install -g tern js-beautify eslint jshint typescript tslint typescript-formatter
sudo pip install autoflake hy

# Installation
rm -rf ~/.emacs.d
rm -rf ~/.spacemacs
ln -s ~/Projects/system/spacemacs/spacemacs ~/.spacemacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

rm -rf ~/.emacs.d/private
ln -s ~/Projects/system/spacemacs/private ~/.emacs.d/private
