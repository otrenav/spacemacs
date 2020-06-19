
(defconst own-markdown-packages
  '(markdown-mode))

(defun own-markdown/pre-init-markdown-mode ()
  (use-package markdown-mode
    :defer
    :bind (:map markdown-mode-map
                ("TAB" . tab-to-tab-stop)
                ("M-p" . own/editing/move-line-up)
                ("M-n" . own/editing/move-line-down))))

(defun own-markdown/post-init-markdown-mode ()
  (add-hook 'markdown-mode-hook
            (lambda ()
              (define-key markdown-mode-map (kbd "C-M-q")
                'own/editing/fill-region-as-paragraph)))
  (add-to-list 'auto-mode-alist '("\\.Rmd" . markdown-mode)))
