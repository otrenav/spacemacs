
(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "C-j") 'own/editing/join-lines)))
