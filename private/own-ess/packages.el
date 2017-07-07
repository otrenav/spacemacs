
(defconst own-ess-packages
  '(ess))

(defun own-ess/post-init-ess ()
  ;; TODO: Check REPL is working
  (setq-default ess-language "R")
  (setq-default inferior-R-program-name "R")
  (setq-default ess-ask-for-ess-directory nil)
  (setq-default flycheck-lintr-linters
                (concat "with_defaults(line_length_linter(80), "
                        ;; "absolute_paths_linter = NULL, "
                        ;; "camel_case_linter = NULL, "
                        ;; "snake_case_linter = NULL, "
                        "trailing_blank_lines_linter = NULL, "
                        "commented_code_linter = NULL)")))
