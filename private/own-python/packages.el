;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `own-python-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `own-python/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `own-python/pre-init-PACKAGE' and/or
;;   `own-python/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

;;
;; - Anaconda > Elpy,  Jedi.el
;; - Flake8   > PEP-8, Pyflakes
;; - Jedi     > Rope
;;
;; - Shift 4 spaces to the right  C-c >
;; - Shift 4 spaces to the left   C-c <
;;
;; Requirements:
;; - Jedi     sudo pip install jedi
;; - Radon    sudo pip install radon
;; - Flake8   sudo pip install flake8
;; - IPython  sudo pip install ipython
;;

(defconst own-python-packages
  ;; TODO: Possibly include MELPA "python" instead of built-in
  ;; TODO: Possibly add "virtualenvwrapper" if necessary
  '(anaconda-mode))

(defun own-python/post-init-anaconda-mode ()
  ;; TODO: Add the following keybindings:
  ;; ("r" anaconda-mode-find-references  "References")
  ;; ("d" anaconda-mode-find-definitions "Definitions")
  ;; ("a" anaconda-mode-find-assignments "Assignments")
  ;; ("o" anaconda-mode-show-doc         "Documentation")
  ;; ("b" anaconda-mode-go-back          "Go back"))
  )
