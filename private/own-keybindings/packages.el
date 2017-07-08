
(defconst own-keybindings-packages
  '(key-chord
    key-seq))

(defun own-keybindings/init-key-chord ()
  ;; The key-chord's package bindings are symmetrical
  (use-package key-chord
    :demand
    :config
    (key-chord-mode 1)))

(defun own-keybindings/init-key-seq ()
  ;; The key-seq's package bindings are ordered
  (use-package key-seq
    :demand
    :config
    ;; The avy package is in Spacemacs
    (key-seq-define-global "kk" 'avy-goto-char)
    (key-seq-define-global "ww" 'delete-window)
    (key-seq-define-global "bb" 'mode-line-other-buffer)))
