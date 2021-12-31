
(defconst own-git-packages
  '(magit))


(defun own-git/post-init-magit ()
  (with-eval-after-load "magit"
    (define-key magit-hunk-section-map (kbd "RET")
      'magit-diff-visit-file-other-window)
    (define-key magit-file-section-map (kbd "RET")
      'magit-diff-visit-file-other-window)
    )
  ;; (setq-default spacemacs-useless-buffers-regexp '())
  ;; (push "magit: .*" spacemacs-useless-buffers-regexp)
  ;; (push "magit-.*: .*"  spacemacs-useless-buffers-regexp)
  ;; (when git-magit-status-fullscreen
  ;;   (setq magit-display-buffer-function
  ;;         'magit-display-buffer-fullframe-status-v1))
  )
