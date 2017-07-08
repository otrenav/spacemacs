
(defun user-emacs-tabbar-groups ()
  "Returns the name of the tab group names the current buffer belongs to.
There are two groups: Emacs buffers (those whose name starts with '*',
plus dired buffers), and the rest."
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))

(defun own/windows/three-even-windows ()
  "Create three horizontally evenly spaced windows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-right)
  (balance-windows)
  (other-window 1))

;; TODO: Bind somewhere (how?)
;; (global-set-key (kbd "<f6>") 'own/windows/three-even-windows)
