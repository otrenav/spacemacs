;;
;; - Enter editing mode          wdired-change-to-wdired-mode
;; - Quit editing mode           C-C C-c
;; - Dired containing directory  C-x C-j
;;

(defconst own-dired-packages
  '(dired
    dired+))

(defun own-dired/post-init-dired ()
  (define-key dired-mode-map (kbd "l") 'own/dired/up-directory)
  (define-key dired-mode-map (kbd "C-l") 'own/dired/up-directory)
  (with-eval-after-load 'key-seq
    (key-seq-define-global ";d" 'own/dired/switch-to-dired-buffer)))

(defun own-dired/init-dired+ ()
  (use-package dired+
    :demand
    :config
    (diredp-toggle-find-file-reuse-dir 1)))
