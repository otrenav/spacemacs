
(defun own/dired/up-directory ()
  "Move up one level in Dired buffer."
  (interactive)
  ;; Requires `Dired+' package
  (diredp-up-directory-reuse-dir-buffer))
