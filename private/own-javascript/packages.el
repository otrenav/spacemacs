;;
;; Setup:
;; $ sudo npm install -g prettier
;;

(defconst own-javascript-packages
  '(prettier-js))

(defun own-javascript/init-prettier-js ())

(defun own-javascript/pre-init-prettier-js ()
  (require 'prettier-js)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode))
