
(setenv "WORKON_HOME" "~/Projects/system/python/envs/")

(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "C-j") 'own/editing/join-lines)))


(defun own/python/score-data-django-shell ()
  (interactive)
  (pyvenv-workon "score-data")
  (setq python-shell-interpreter-args
        (concat "-i /home/otrenav/Projects/datata/score-data/"
                "project/manage.py shell_plus"))
  (setq old-shell python-shell-interpreter)
  (setq python-shell-interpreter "python")
  (run-python)
  (split-window-right)
  (other-window 1)
  (switch-to-buffer (get-buffer-create "*Python*"))
  (setq python-shell-interpreter old-shell)
  (setq python-shell-interpreter-args "-i"))


(defun own/python/cvest-django-shell ()
  (interactive)
  (pyvenv-workon "cvest")
  (setq python-shell-interpreter-args
        (concat "-i /home/otrenav/Projects/personal/cvest/"
                "webapp/manage.py shell_plus"))
  (setq old-shell python-shell-interpreter)
  (setq python-shell-interpreter "python3")
  (run-python)
  (split-window-right)
  (other-window 1)
  (switch-to-buffer (get-buffer-create "*Python*"))
  (setq python-shell-interpreter old-shell)
  (setq python-shell-interpreter-args "-i"))
