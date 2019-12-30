;;
;; Setup:
;; $ sudo npm install -g prettier
;;

(defconst own-javascript-packages
  '(prettier-js rjsx-mode))

(defun own-javascript/pre-init-prettier-js ()
  (require 'prettier-js)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'react-mode-hook 'prettier-js-mode))

(defun own-javascript/init-rjsx-mode ())
