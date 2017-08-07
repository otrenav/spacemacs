
(setenv "WORKON_HOME" "~/Projects/system/python/envs/")

(defun own/python/score-data-django-shell ()
  (interactive)
  (pyvenv-workon "score-data")
  (setq python-shell-interpreter-args
        (concat "-i /home/otrenav/Projects/datata/score-data/"
                "project/manage.py shell_plus"))
  (run-python)
  (split-window-right)
  (other-window 1)
  (switch-to-buffer (get-buffer-create "*Python*"))
  (setq python-shell-interpreter-args "-i"))


(defun own/python/cvest-django-shell ()
  (interactive)
  (pyvenv-workon "cvest")
  (setq python-shell-interpreter-args
        (concat "-i /home/otrenav/Projects/personal/cvest/"
                "project/manage.py shell_plus"))
  (run-python)
  (split-window-right)
  (other-window 1)
  (switch-to-buffer (get-buffer-create "*Python*"))
  (setq python-shell-interpreter-args "-i"))
