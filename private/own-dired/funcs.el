
(defun own/dired/up-directory ()
  "Move up one level in Dired buffer."
  (interactive)
  (dired-single-buffer ".."))


(defun own/dired/switch-to-dired-buffer ()
  "Switch to the first Dired buffer found."
  (interactive)
  (let ((dired-buffers (cl-remove-if-not
                        (lambda (buffers)
                          (with-current-buffer buffers
                            (derived-mode-p 'dired-mode)))
                        (buffer-list))))
    (switch-to-buffer (car dired-buffers))))
