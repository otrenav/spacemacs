;;
;; - Black    > Flake8, PEP-8, Pyflakes
;; - Anaconda > Elpy, Jedi.el
;; - Jedi     > Rope
;;
;; - Shift 4 spaces to the right  C-c >
;; - Shift 4 spaces to the left   C-c <
;;

(defconst own-python-packages
  '(anaconda-mode (blacken :location local)))

(defun own-python/pre-init-blacken ()
  (use-package blacken
    :config
    :defer
    (add-hook 'python-mode-hook 'blacken-mode)))

(defun own-python/post-init-anaconda-mode ()
  ;; TODO: Add the following keybindings:
  ;; ("r" anaconda-mode-find-references  "References")
  ;; ("d" anaconda-mode-find-definitions "Definitions")
  ;; ("a" anaconda-mode-find-assignments "Assignments")
  ;; ("o" anaconda-mode-show-doc         "Documentation")
  ;; ("b" anaconda-mode-go-back          "Go back"))
  )
