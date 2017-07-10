
(defconst own-markdown-packages
  '(markdown-mode))

(defun own-markdown/post-init-markdown-mode ()
  (add-to-list 'auto-mode-alist '("\\.Rmd" . markdown-mode)))
