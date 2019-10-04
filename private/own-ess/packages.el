
(defconst own-ess-packages
  '(ess))

(defun own-ess/pre-init-ess ()
  (defun r-setup ()
    (setq-default comment-add 0)
    (setq-default ess-language "R")
    (setq-default ess-indent-level 4)
    (setq-default ess-indent-offset 4)
    (setq-default ess-default-style 'OWN)
    (setq-default ess-toggle-underscore nil)
    (setq-default inferior-R-program-name "R")
    (setq-default ess-ask-for-ess-directory nil)
    (setq-default ess-indent-with-fancy-comments nil)
    (setq-default flycheck-lintr-linters
          (concat "with_defaults(line_length_linter(80), "
                  "absolute_paths_linter = NULL, "
                  "camel_case_linter = NULL, "
                  "snake_case_linter = NULL, "
                  "trailing_blank_lines_linter = NULL, "
                  "commented_code_linter = NULL)")))
  (add-hook 'ess-mode-hook 'r-setup)
  (add-hook 'inferior-ess-mode-hook 'r-setup))
