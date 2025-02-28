
(defconst own-windows-packages
  '(tabbar
    ace-window))

(defun own-windows/init-tabbar ()
  (use-package tabbar
    :defer
    :bind (("S-<left>"  . tabbar-backward-tab)
           ("S-<right>" . tabbar-forward-tab))
    :config
    (setq tabbar-buffer-groups-function 'own/tabbar/groups)
    (tabbar-mode)))

(defun own-windows/post-init-ace-window ()
  (with-eval-after-load 'key-seq
    (key-seq-define-global ";s" 'ace-select-window)))


(global-set-key (kbd "<f7>") 'own/windows/three-even-windows)

(with-eval-after-load 'key-seq
  (key-seq-define-global ";w" 'delete-window)
  (key-seq-define-global ";k" 'kill-current-buffer)
  (key-seq-define-global "bb" 'mode-line-other-buffer))
