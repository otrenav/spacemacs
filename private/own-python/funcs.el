
(defun own/python/score-data-django-shell ()
  (interactive)

  ;; TODO: This may not work:
  (venv-workon "score-data")

  (setq python-shell-interpreter-args
        (concat "-i /home/otrenav/Projects/datata/score-data/"
                "project/manage.py shell_plus"))
  (run-python)
  (split-window-right)
  (other-window 1)
  (switch-to-buffer (get-buffer-create "*Python*"))
  (setq python-shell-interpreter-args "-i"))
