;;
;; - Show `key-chord' keybindings  `key-chord-describe'
;;

;; TODO: Expand region   (M-m v)
;; TODO: Contract region (M-m V)
;; TODO: Indent region   (M-m j =)

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

(defun own/kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

(defun own/kill-emacs-client ()
  "Kill Emacs client by killing all buffers, frames, and windows."
  (interactive)
  (own/kill-all-buffers)
  (spacemacs/toggle-maximize-buffer)
  (delete-window))

(global-unset-key "\C-x\C-z")
(global-unset-key "\C-x\C-c")

(global-set-key (kbd "C-Q")     'own/kill-emacs-client)
(global-set-key (kbd "C-+")     'text-scale-increase)
(global-set-key (kbd "C--")     'text-scale-decrease)
(global-set-key (kbd "C-x C-n") 'next-line)

(substitute-key-definition 'kill-buffer 'kill-this-buffer global-map)
