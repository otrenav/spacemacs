
(defconst own-markdown-packages
  '(markdown-mode))

(defun own-markdown/pre-init-markdown-mode ()
  (use-package markdown-mode
    :defer
    :bind (:map markdown-mode-map
                ("M-p" . own/editing/move-line-up)
                ("M-n" . own/editing/move-line-down))))

(defun own-markdown/post-init-markdown-mode ()
  (add-to-list 'auto-mode-alist '("\\.Rmd" . markdown-mode)))
