
(setenv "WORKON_HOME" "~/code/system/python/envs/")

(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "C-j") 'own/editing/join-lines)))
