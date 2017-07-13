
(defconst own-yaml-packages
  '(yaml-mode))

(defun own-yaml/post-init-yaml-mode ()
  (setq-default yaml-indent-offset 4))
