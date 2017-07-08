
(defconst own-windows-packages
  '(tabbar
    neotree
    ace-window))

(defun own-windows/init-tabbar ()
  (use-package tabbar
    :defer
    :bind (("S-<left>"  . tabbar-backward-tab)
           ("S-<right>" . tabbar-forward-tab))
    :config
    (setq tabbar-buffer-groups-function 'user-emacs-tabbar-groups)
    (tabbar-mode)))

(defun own-windows/post-init-neotree ()
  ;; TODO: Bind 'neotree-toggle' to "C-t" ?
  )

(defun own-windows/post-init-ace-window ()
  ;; TODO: Bind 'ace-window' to "C-. C-." ?
  )
