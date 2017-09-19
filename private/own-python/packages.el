;;
;; - Anaconda > Elpy,  Jedi.el
;; - Flake8   > PEP-8, Pyflakes
;; - Jedi     > Rope
;;
;; - Shift 4 spaces to the right  C-c >
;; - Shift 4 spaces to the left   C-c <
;;
;; - yapify-buffer to format Python code with YAPF
;;

(defconst own-python-packages
  '(anaconda-mode))

(defun own-python/post-init-anaconda-mode ()
  ;; TODO: Add the following keybindings:
  ;; ("r" anaconda-mode-find-references  "References")
  ;; ("d" anaconda-mode-find-definitions "Definitions")
  ;; ("a" anaconda-mode-find-assignments "Assignments")
  ;; ("o" anaconda-mode-show-doc         "Documentation")
  ;; ("b" anaconda-mode-go-back          "Go back"))
  )
