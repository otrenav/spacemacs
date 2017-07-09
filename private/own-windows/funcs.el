
(defun own/tabbar/groups ()
  "Returns the name of the tab group names the current buffer belongs to.
There are two groups: Emacs (those whose name starts with '*', ' *', or
are Dired buffers), and the rest."
  (list (cond ((string-equal " *" (substring (buffer-name) 0 2)) "Emacs")
              ((string-equal "*"  (substring (buffer-name) 0 1)) "Emacs")
              ((eq major-mode 'dired-mode) "Emacs")
              (t "User"))))

(defun own/windows/three-even-windows ()
  "Create three horizontally evenly spaced windows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-right)
  (balance-windows)
  (other-window 1))
