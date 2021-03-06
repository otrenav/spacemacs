;;
;; - Show `key-chord' keybindings  `key-chord-describe'
;;

;; TODO: Expand region   (M-m v)
;; TODO: Contract region (M-m V)
;; TODO: Indent region   (M-m j =)

(defconst own-keybindings-packages
  '(key-seq
    key-chord))

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

(defun own/kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list))
  (print "Killed all buffers."))

(global-unset-key "\C-x\C-z")
(global-unset-key "\C-x\C-c")
(global-unset-key "\M-r")

(global-set-key (kbd "C-x C-n") 'next-line)
(global-set-key (kbd "C-+")     'text-scale-increase)
(global-set-key (kbd "C--")     'text-scale-decrease)
(global-set-key (kbd "C-S-w")   'own/kill-all-buffers)
(global-set-key (kbd "C-Q")     'spacemacs/prompt-kill-emacs)
(global-set-key (kbd "M-r")     'anzu-query-replace-at-cursor)

(substitute-key-definition 'kill-buffer 'kill-this-buffer global-map)
