
(defconst own-helm-packages
  '(helm
    helm-swoop))

(defun own-helm/post-init-helm ()
  (global-set-key (kbd "M-H") 'helm-resume)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (with-eval-after-load 'key-seq
    (key-seq-define-global "xx" 'helm-M-x)
    (key-seq-define-global "jf" 'helm-find-files)
    (key-seq-define-global "vb" 'helm-buffers-list)
    (key-seq-define-global "jg" 'helm-browse-project)
    (key-seq-define-global ";a" 'helm-filtered-bookmarks)))

(defun own-helm/post-init-helm-swoop ()
  (global-set-key (kbd "M-i")     'helm-swoop)
  (global-set-key (kbd "C-. M-i") 'helm-multi-swoop)
  (global-set-key (kbd "C-. M-I") 'helm-multi-swoop-all)
  (global-set-key (kbd "M-I")     'helm-swoop-back-to-last-point)
  (global-set-key (kbd "C-. C-i") 'helm-multi-swoop-current-mode))
