;;
;; Spell checking
;; --------------
;; - hunspell > aspell > ispell (program)
;; - ispell (command) checks manually
;; - flyspell checks interactively
;;
;; Requires:
;; - hunspell (sudo apt-get install hunspell)
;; - aspell   (sudo apt-get install aspell)
;;
;; - kill-rectangle    C-x r k
;; - yank-rectangle    C-x r y
;; - insert-rectangle  C-x r t
;; - delete-rectangle  C-x r d
;; - add number lines  C-x r N
;;

;; Briefly, each package to be installed or configured by this layer should be
;; added to `own-text-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `own-text/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `own-text/pre-init-PACKAGE' and/or
;;   `own-text/post-init-PACKAGE' to customize the package as it is loaded.

(defconst own-text-packages
  ;; TODO: test "pandoc" package
  '())

;;;;;;;;;;;

;; (bind-keys*
;;  ("M-p" . own/text/move-line-up)
;;  ("M-n" . own/text/move-line-down)
;;  ("C-d" . own/text/duplicate-current-line-or-region))

;; (defun own/text/correct-next-word ()
;;   "Correct next word found with flyspell using ispell."
;;   (interactive)
;;   (flyspell-goto-next-error)
;;   (ispell-word))

;; (global-set-key (kbd "<f8>") 'ispell-word)
;; (global-set-key (kbd "M-<f8>") 'own/text/correct-next-word)

;; (cond
;;  ((executable-find "hunspell")
;;   (setq-default ispell-program-name "hunspell")
;;   (setq-default ispell-local-dictionary "en_US")
;;   (setq-default ispell-local-dictionary-alist
;;                 ;; You could use ("-d" "en_US,en_US-med")
;;                 ;; to check with multiple dictionaries
;;                 '(("en_US"
;;                    "[[:alpha:]]"
;;                    "[^[:alpha:]]"
;;                    "[']"
;;                    nil ("-d" "en_US") nil utf-8))))
;;  ((executable-find "aspell")
;;   (setq-default ispell-program-name "aspell")
;;   (setq-default ispell-extra-args '("--sug-mode=ultra"
;;                                     "--lang=en_US"
;;                                     "--run-together"
;;                                     "--run-together-limit=5"
;;                                     "--run-together-min=2"))))

;; (use-package whitespace
;;   :ensure t
;;   :defer 30
;;   :diminish (whitespace-mode
;;              global-whitespace-mode
;;              whitespace-newline-mode)
;;   :preface
;;   (dolist (hook '(ess-mode-hook
;;                   prog-mode-hook
;;                   text-mode-hook
;;                   conf-mode-hook))
;;     (add-hook hook #'whitespace-mode))
;;   :config
;;   (setq-default show-trailing-whitespace t)
;;   (setq-default whitespace-auto-cleanup t)
;;   (setq-default whitespace-line-column fill-column)
;;   (setq-default whitespace-rescan-timer-time nil)
;;   (setq-default whitespace-style '(tabs
;;                                    face
;;                                    tab-mark
;;                                    indentation
;;                                    trailing
;;                                    lines-tail)))

;; (use-package anzu
;;   :ensure t
;;   :diminish anzu-mode
;;   :bind (("M-%"   . anzu-query-replace)
;;          ("C-M-%" . anzu-query-replace-regexp))
;;   :config
;;   (global-anzu-mode 1))


;; (use-package text-mode
;;   :bind (:map text-mode-map
;;               ("C-j" . own/text/delete-indentation-forward)))


;; (use-package multi-line
;;   :bind ("M-j" . multi-line))
