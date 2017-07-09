;;
;; - Show `key-chord' keybindings  `key-chord-describe'
;;

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
    :commands (key-seq-define-global)))


(global-unset-key "\C-x\C-z")
(global-unset-key "\C-x\C-c")

(global-set-key (kbd "C-+")     'text-scale-increase)
(global-set-key (kbd "C--")     'text-scale-decrease)
(global-set-key (kbd "C-x C-n") 'next-line)

(substitute-key-definition 'kill-buffer 'kill-this-buffer global-map)
