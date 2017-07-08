
;;
;; - Enter editing mode          wdired-change-to-wdired-mode
;; - Quit editing mode           C-C C-c
;; - Dired containing directory  C-x C-j
;;

(defconst own-dired-packages
  '(dired
    dired+
    dired-single))

(defun own-dired/post-init-dired ()
  ;; TODO: use key-chord to use ".d"
  ;; TODO: use "l" and "C-l" to move up one directory
  ;; (key-seq-define-global ".d" 'own/dired/switch-to-dired-buffer)
  (global-set-key (kbd "C-d") 'own/dired/up-directory)
  (global-set-key (kbd "C-M-d") 'own/dired/switch-to-dired-buffer))

(defun own-dired/init-dired+ ())

(defun own-dired/init-dired-single ()
  ;; TODO: Keep only one Dired buffer
  (setq-default dired-single-use-magic-buffer t))
