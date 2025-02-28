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

(substitute-key-definition 'kill-buffer 'kill-current-buffer global-map)
