;;
;; - kill-rectangle    C-x r k
;; - yank-rectangle    C-x r y
;; - insert-rectangle  C-x r t
;; - delete-rectangle  C-x r d
;; - add number lines  C-x r N
;;

(defconst own-editing-packages
  '(align
    whitespace
    auto-highlight-symbol))

(defun own-editing/init-align ())

(defun own-editing/post-init-whitespace ()
  (setq-default system-time-locale "C")
  (setq-default whitespace-auto-cleanup t)
  (setq-default show-trailing-whitespace t)
  (setq-default whitespace-rescan-timer-time nil)
  ;; TODO: highlight after column number
  (setq-default whitespace-line-column fill-column)
  (setq-default whitespace-style '(tabs
                                   face
                                   tab-mark
                                   indentation
                                   trailing
                                   lines-tail)))

(defun own-editing/post-init-auto-highlight-symbol ()
  (spacemacs/toggle-automatic-symbol-highlight-on)
  (define-key prog-mode-map (kbd "M-N") 'spacemacs/enter-ahs-forward)
  (define-key prog-mode-map (kbd "M-P") 'spacemacs/enter-ahs-backward))


(add-hook 'prog-mode-hook       'own/editing/syntax-color-hex)
(add-hook 'web-mode-hook        'own/editing/syntax-color-hex)
(add-hook 'css-mode-hook        'own/editing/syntax-color-hex)
(add-hook 'html-mode-hook       'own/editing/syntax-color-hex)
(add-hook 'markdown-mode-hook   'own/editing/syntax-color-hex)
(add-hook 'emacs-lisp-mode-hook 'own/editing/syntax-color-hex)

(global-set-key (kbd "C-j")     'own/editing/join-lines)
(global-set-key (kbd "M-p")     'own/editing/move-line-up)
(global-set-key (kbd "M-n")     'own/editing/move-line-down)
(global-set-key (kbd "C-d")     'own/editing/duplicate-current-line-or-region)
(global-set-key (kbd "C-M-%")   'anzu-query-replace-at-cursor)
(global-set-key (kbd "M-%")     'anzu-query-replace)

(with-eval-after-load 'key-seq
  (key-seq-define-global "kk" 'avy-goto-char))

(with-eval-after-load 'key-seq
  (key-seq-define-global ";r" 'anzu-query-replace-at-cursor))

(global-set-key [remap goto-line] 'own/editing/goto-line-with-numbers)
