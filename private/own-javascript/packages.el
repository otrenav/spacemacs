
(defconst own-javascript-packages
  '(prettier-js))

(message "INSIDE 1 ************************")

(defun own-javascript/init-prettier-js ())

(defun own-javascript/pre-init-prettier-js ()
  (require 'prettier-js)
  (message "INSIDE 2 ************************")
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode))
