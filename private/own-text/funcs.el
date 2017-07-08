
(defun own/text/inline-to-aligned-arguments ()
  ;; TODO: Implement this function
  )


(defun own/text/duplicate-current-line-or-region (arg)
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


(defun own/text/move-line-down ()
  "Move current line down and follow it."
  (interactive)
  (forward-line)
  (transpose-lines 1)
  (previous-line))


(defun own/text/move-line-up ()
  "Move current line up and follow it."
  (interactive)
  (forward-line)
  (transpose-lines -1)
  (previous-line))


(defun own/text/delete-indentation-forward ()
  (interactive)
  (delete-indentation t))
