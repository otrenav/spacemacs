
(defun own/editing/open-with ()
  "Open current file with external program."
  (interactive)
  (when buffer-file-name
    (shell-command (concat
                    (if (eq system-type 'darwin) "open"
                      (read-shell-command "Open current file with: ")) " "
                      buffer-file-name))))


(defun own/editing/open-desktop-directory ()
  "Show current file in desktop (OS's file manager).
http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html"
  (interactive)
  (cond
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux") (shell-command "nautilus ."))))


(defun own/editing/syntax-color-hex ()
  "Syntax color hex values buffer."
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[abcdefABCDEF[:digit:]]\\{6\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background (match-string-no-properties 0)))))))
  (font-lock-fontify-buffer))


(defun own/editing/goto-line-with-numbers ()
  "Show line numbers while prompting for the line number."
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))


(defun own/editing/toggle-camelcase-underscores ()
  "Toggle between CamelCase and under_score notation
for the symbol at point."
  (interactive)
  (save-excursion
    (let* ((bounds (bounds-of-thing-at-point 'symbol))
           (start (car bounds))
           (end (cdr bounds))
           (currently-using-underscores-p
            (progn (goto-char start (re-search-forward "_" end t)))))
      (if currently-using-underscores-p
          (progn
            (upcase-initials-region start end)
            (replace-string "_" "" nil start end)
            (downcase-region start (1+ start)))
        (replace-regexp "\\([A-Z]\\)" "_\\1" nil (1+ start) end)
        (downcase-region start
                         (cdr (bounds-of-thing-at-point 'symbol)))))))


(defun own/editing/duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated.
If there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))


(defun own/editing/move-line-down ()
  "Move current line down and follow it."
  (interactive)
  (forward-line)
  (transpose-lines 1)
  (previous-line))


(defun own/editing/move-line-up ()
  "Move current line up and follow it."
  (interactive)
  (forward-line)
  (transpose-lines -1)
  (previous-line))


(defun own/editing/join-lines ()
  "Join two lines into single line."
  (interactive)
  (delete-indentation t))

(defun own/editing/cleanup-buffer ()
  "Do things the right way. ;)"
  (interactive)
  (own/editing/helper/whitespace-cleanup)
  (own/editing/helper/untabify-buffer)
  (own/editing/helper/indent-buffer)
  (own/editing/helper/delete-empty-final-lines)
  (own/editing/helper/make-standard-breaklines))


(defun own/editing/helper/whitespace-cleanup ()
  (goto-char (point-min))
  (whitespace-cleanup)
  (delete-trailing-whitespace))


(defun own/editing/helper/untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))


(defun own/editing/helper/indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))


(defun own/editing/helper/delete-empty-final-lines ()
  (goto-char (point-max))
  (delete-blank-lines))


(defun own/editing/helper/make-standard-breaklines ()
  (set-buffer-file-coding-system 'unix)
  (goto-char (point-min))
  (while (re-search-forward "\r$" nil t)
    (replace-match ""))
  (set-buffer-file-coding-system 'utf-8))
