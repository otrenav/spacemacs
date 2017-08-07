
(defconst own-ess-packages
  '(ess))

(defun own-ess/pre-init-ess ()
  (defun r-setup ()
    (setq comment-add 0)
    (setq ess-language "R")
    (setq ess-indent-level 4)
    (setq ess-indent-offset 4)
    (setq ess-default-style 'OWN)
    (setq ess-toggle-underscore nil)
    (setq inferior-R-program-name "R")
    (setq ess-ask-for-ess-directory nil)
    (setq ess-indent-with-fancy-comments nil)
    (setq flycheck-lintr-linters
          (concat "with_defaults(line_length_linter(80), "
                  ;; "absolute_paths_linter = NULL, "
                  ;; "camel_case_linter = NULL, "
                  ;; "snake_case_linter = NULL, "
                  "trailing_blank_lines_linter = NULL, "
                  "commented_code_linter = NULL)")))
  (add-hook 'ess-mode-hook 'r-setup)
  (add-hook 'inferior-ess-mode-hook 'r-setup))
