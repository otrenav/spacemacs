
(defconst own-html-packages
  '(web-mode))

(defun own-html/post-init-web-mode ()
  ;; (setq-default web-mode-style-padding 4)
  ;; (setq-default web-mode-block-padding 4)
  ;; (setq-default web-mode-script-padding 4)
  ;; (setq-default web-mode-css-indent-offset 4)
  ;; (setq-default web-mode-code-indent-offset 4)
  ;; (setq-default web-mode-enable-auto-pairing t)
  ;; (setq-default web-mode-markup-indent-offset 4)
  ;; (setq-default web-mode-enable-css-colorization t)
  ;; (setq-default web-mode-enable-comment-keywords t)
  ;; (setq-default web-mode-enable-current-column-highlight t)
  ;; (setq-default web-mode-enable-current-element-highlight t)
  (setq-default web-mode-engines-alist '(("django" . "\\.html\\'"))))
