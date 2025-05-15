;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-configuration-layers
   '(
     ;; syntax-checking  ;; Prefixes: e, t
     emacs-lisp
     markdown
     helm
     yaml
     git
     ess
     (neotree
      :variables
      neo-theme 'arrow
      neo-vc-integration '(face))
     (html
      :variables
      css-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-attr-indent-offset 2
      web-mode-markup-indent-offset 2)
     (json
      :variables
      json-fmt-on-save t
      json-fmt-tool 'prettier)
     (javascript
      :variables
      js-indent-level 2
      js2-basic-offset 2)
     (version-control
      :variables
      version-control-global-margin t
      version-control-diff-tool 'diff-hl)
     (python
      :variables
      python-formatter 'black
      python-format-on-save t
      python-test-runner 'pytest)
     (typescript
      :variables
      typescript-fmt-on-save t
      typescript-indent-level 2
      typescript-fmt-tool 'typescript-formatter)
     (sql
      :variables
      sql-capitalize-keywords nil)
     (spell-checking
      :variables
      enable-flyspell-auto-completion t
      spell-checking-enable-by-default nil
      spell-checking-enable-auto-dictionary t)
     (auto-completion
      :variables
      auto-completion-return-key-behavior 'complete
      auto-completion-enable-snippets-in-popup t
      auto-completion-tab-key-behavior 'cycle
      auto-completion-enable-sort-by-usage t
      auto-completion-enable-help-tooltip t)

     ;; Own layers
     own-javascript
     own-yaml
     own-html
     own-sql
     )

   dotspacemacs-additional-packages
   '(
     auto-highlight-symbol
     cmake-mode
     whitespace
     helm-swoop
     key-chord
     magit
     xclip
     )

   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-enable-lazy-installation nil
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-install-packages 'used-only
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-frozen-packages '()

   dotspacemacs-excluded-packages
   '(
     evil-search-highlight-persist
     evil-terminal-cursor-changer
     paradox@spacemacs-navigation
     aggressive-indent-mode
     evil-indent-textobject
     highlight-indentation
     highlight-parentheses
     evil-nerd-commenter
     volatile-highlights
     clean-aindent-mode
     ess-R-object-popup
     rainbow-delimiters
     highlight-numbers
     evil-iedit-share
     google-translate
     smooth-scrolling
     window-numbering
     auto-dictionary
     evil-lisp-state
     vi-tilde-fringe
     linum-relative
     open-junk-file
     evil-exchange
     fancy-battery
     hungry-delete
     eval-sexp-fu
     evil-matchit
     evil-numbers
     golden-ratio
     indent-guide
     buffer-move
     define-word
     evil-jumper
     helm-themes
     hl-anything
     smartparens
     smartparens
     ace-window
     evil-tutor
     evil-args
     undo-tree
     iswitchb
     zoom-frm
     desktop
     flx-ido
     pcre2el
     recentf
     info+
     spray
     csv
     )
   )
  )

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs
initialization before layers configuration. You should not put
any user code in there besides modifying the variable values."
  (setq-default
   dotspacemacs-default-font '("Roboto Mono Medium" :size 22))
  (cond ((string-equal (downcase system-name) "olap")
         (progn (setq-default dotspacemacs-default-font
                              '("Roboto Mono Medium" :size 36)))))

  ;; Others
  (setq-default
   dotspacemacs-themes '(monokai)
   dotspacemacs-startup-lists '((recents . 10) (bookmarks . 10))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-default-package-repository nil
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-show-transient-state-title t
   dotspacemacs-whitespace-cleanup 'trailing
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-display-default-layout nil
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-inactive-transparency 100
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-active-transparency 100
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-loading-progress-bar t
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-helm-position 'bottom
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-persistent-server nil
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-folding-method 'evil
   dotspacemacs-editing-style 'emacs
   dotspacemacs-verbose-loading nil
   dotspacemacs-which-key-delay 0.3
   dotspacemacs-ex-command-key ":"
   dotspacemacs-check-for-update t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-helm-no-header nil
   dotspacemacs-startup-banner nil
   dotspacemacs-large-file-size 1
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-line-numbers nil
   dotspacemacs-helm-resize nil
   dotspacemacs-elpa-timeout 5
   dotspacemacs-elpa-https t
   json-reformat:indent-width 2
   js2-basic-offset 2
   js-indent-level 2
   )
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer
configuration executes. This function is mostly useful for
variables that need to be set before packages are loaded. If you
are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs
initialization after layers configuration. This is the place
where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a
package is loaded, you should place your code here."

  (require 'helm-bookmark)

  (xclip-mode 1)
  (global-company-mode)
  (global-auto-revert-mode t)

  (setq-default
   neo-hidden-regexp-list '("^\\." "\\.cs\\.meta$" "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "^__pycache__$"))
  (setq-default
   spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (setq-default
   whitespace-style '(tabs face tab-mark indentation trailing lines-tail))
  (setq-default global-auto-revert-non-file-buffers t)
  (setq-default global-auto-highlight-symbol-mode t)
  (setq-default whitespace-line-column fill-column)
  (setq-default auto-fill-function 'do-auto-fill)
  (setq-default whitespace-rescan-timer-time nil)
  (setq-default dotspacemacs-elpa-timeout 20)
  (setq-default dotspacemacs-elpa-https nil)
  (setq-default select-enable-clipboard t)
  (setq-default scroll-conservatively 101)
  (setq-default show-trailing-whitespace t)
  (setq-default whitespace-auto-cleanup t)
  (setq-default neo-window-fixed-size nil)
  (setq-default neo-show-hidden-files nil)
  (setq-default auto-revert-verbose nil)
  (setq-default ess-fancy-comments nil)
  (setq-default system-time-locale "C")
  (setq-default indent-tabs-mode nil)
  (setq-default vc-follow-symlinks t)
  (setq-default use-dialog-box nil)
  (setq-default truncate-lines t)
  (setq-default fill-column 80)
  (setq-default tab-width 4)

  (setq-default web-mode-markup-indent-offset 2)
  (setq-default web-mode-code-indent-offset 2)
  (setq-default web-mode-attr-indent-offset 2)
  (setq-default web-mode-css-indent-offset 2)
  (setq-default web-mode-script-padding 2)
  (setq-default css-indent-offset 2)

  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (delete-selection-mode t)
  (transient-mark-mode t)
  (blink-cursor-mode t)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)

  (require 'key-chord)
  (key-chord-mode 1)
  (setq key-chord-two-keys-delay 0.2)

  ;;
  ;; Key bindings
  ;;
  ;; - kill-rectangle         C-x r k
  ;; - yank-rectangle         C-x r y
  ;; - insert-rectangle       C-x r t
  ;; - delete-rectangle       C-x r d
  ;; - add number lines       C-x r N
  ;; - TODO: Expand region    M-m v
  ;; - TODO: Contract region  M-m V
  ;;

  (global-unset-key "\C-o")

  (global-set-key (kbd "C-M-f")   'mark-defun)
  (global-set-key (kbd "C-o")     'other-window)
  (global-set-key (kbd "M-%")     'anzu-query-replace)
  (global-set-key (kbd "C-x k")   'kill-current-buffer)
  (global-set-key (kbd "C-+")     'text-scale-increase)
  (global-set-key (kbd "C--")     'text-scale-decrease)
  (global-set-key (kbd "C-\\")    'comment-or-uncomment-region)

  (global-set-key (kbd "M-i")     'spacemacs/helm-swoop-region-or-symbol)
  (global-set-key (kbd "M-I")     'helm-swoop-back-to-last-point)
  (global-set-key (kbd "C-. C-i") 'helm-multi-swoop-current-mode)
  (global-set-key (kbd "C-. M-I") 'helm-multi-swoop-all)
  (global-set-key (kbd "C-. M-i") 'helm-multi-swoop)
  (global-set-key (kbd "C-M-\\")  'helm-projectile-find-file)
  (global-set-key (kbd "M-y")     'helm-show-kill-ring)
  (global-set-key (kbd "M-/")     'helm-projectile-ag)
  (global-set-key (kbd "M-H")     'helm-resume)

  (global-set-key (kbd "<f8>")    'own/three-even-windows)
  (global-set-key (kbd "C-j")     'own/editing/join-lines)
  (global-set-key (kbd "M-p")     'own/editing/move-line-up)
  (global-set-key (kbd "M-n")     'own/editing/move-line-down)
  (global-set-key (kbd "C-d")     'own/editing/duplicate-current-line-or-region)

  (key-chord-define-global ";r"   'anzu-query-replace-at-cursor)
  (key-chord-define-global ";a"   'helm-filtered-bookmarks)
  (key-chord-define-global ";d"   'dired-jump-other-window)
  (key-chord-define-global "bb"   'mode-line-other-buffer)
  (key-chord-define-global "kk"   'kill-current-buffer)
  (key-chord-define-global "jg"   'helm-browse-project)
  (key-chord-define-global "vb"   'helm-buffers-list)
  (key-chord-define-global "jf"   'helm-find-files)
  (key-chord-define-global ";w"   'delete-window)
  (key-chord-define-global ";c"   'avy-goto-char)

  (with-eval-after-load 'python-mode
    ;; TODO: Still not working. How?
    (define-key python-mode-map (kbd "C-j") 'own/editing/join-lines))

  (with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "C-o") 'other-window)
    (key-chord-define dired-mode-map "kk"  'kill-current-buffer))

  (with-eval-after-load 'markdown-mode
    (define-key markdown-mode-map (kbd "M-p") 'own/editing/move-line-up)
    (define-key markdown-mode-map (kbd "M-n") 'own/editing/move-line-down))

  (with-eval-after-load 'magit
    (define-key magit-hunk-section-map (kbd "RET")
                'magit-diff-visit-file-other-window)
    (define-key magit-file-section-map (kbd "RET")
                'magit-diff-visit-file-other-window))

  ;;
  ;; Hooks
  ;;
  (add-hook 'prog-mode-hook       'own/editing/syntax-color-hex)
  (add-hook 'web-mode-hook        'own/editing/syntax-color-hex)
  (add-hook 'css-mode-hook        'own/editing/syntax-color-hex)
  (add-hook 'html-mode-hook       'own/editing/syntax-color-hex)
  (add-hook 'markdown-mode-hook   'own/editing/syntax-color-hex)
  (add-hook 'emacs-lisp-mode-hook 'own/editing/syntax-color-hex)

  ;;
  ;; Own functions
  ;;
  (defun own/editing/join-lines ()
    "Join two lines into single line."
    (interactive)
    (delete-indentation t))

  (defun own/editing/move-line-down ()
    "Move current line down and follow it."
    (interactive)
    (forward-line)
    (transpose-lines 1)
    (previous-line))

  (defun own/editing/move-line-up ()
    "Move current line up and follow it."
    (interactive)
    (forward-line)
    (transpose-lines -1)
    (previous-line))

  (defun own/editing/goto-line-with-numbers ()
    "Show line numbers while prompting for the line number."
    (interactive)
    (unwind-protect
        (progn
          (display-line-numbers-mode 1)
          (goto-line (read-number "Goto line: ")))
      (display-line-numbers-mode -1)))

  (global-set-key [remap goto-line] 'own/editing/goto-line-with-numbers)

  (defun own/three-even-windows ()
    "Create three horizontally evenly spaced windows."
    (interactive)
    (delete-other-windows)
    (split-window-right)
    (split-window-right)
    (balance-windows)
    (other-window 1))

  (defun own/editing/duplicate-current-line-or-region (arg)
    "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated.
If there's a region, all lines that region covers will be duplicated."
    (interactive "p")
    (let (beg end (origin (point)))
      (if (and mark-active (> (point) (mark)))
          (exchange-point-and-mark))
      (setq beg (line-beginning-position))
      (if mark-active
          (exchange-point-and-mark))
      (setq end (line-end-position))
      (let ((region (buffer-substring-no-properties beg end)))
        (dotimes (i arg)
          (goto-char end)
          (newline)
          (insert region)
          (setq end (point)))
        (goto-char (+ origin (* (length region) arg) arg)))))

  (defun own/editing/sort-lines-by-length (reverse beg end)
    "Sort lines by length."
    (interactive "P\nr")
    (save-excursion
      (save-restriction
        (narrow-to-region beg end)
        (goto-char (point-min))
        (let ;; To make `end-of-line' and etc. to ignore fields.
            ((inhibit-field-text-motion t))
          (sort-subr reverse 'forward-line 'end-of-line nil nil
                     (lambda (l1 l2)
                       (apply #'< (mapcar (lambda (range) (- (cdr range) (car range)))
                                          (list l2 l1)))))))))

  (defun own/editing/syntax-color-hex ()
    "Syntax color hex values buffer."
    (interactive)
    (font-lock-add-keywords
     nil
     '(("#[abcdefABCDEF[:digit:]]\\{6\\}"
        (0 (put-text-property
            (match-beginning 0)
            (match-end 0)
            'face (list :background (match-string-no-properties 0)))))))
    (font-lock-fontify-buffer))

  (defun own/editing/open-with ()
    "Open current file with external program."
    (interactive)
    (when buffer-file-name
      (shell-command (concat
                      (if (eq system-type 'darwin) "open"
                        (read-shell-command "Open current file with: ")) " "
                      buffer-file-name))))

  (defun own/editing/open-desktop-directory ()
    "Show current file in desktop (OS's file manager).
http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html"
    (interactive)
    (cond
     ((string-equal system-type "darwin") (shell-command "open ."))
     ((string-equal system-type "gnu/linux") (shell-command "nautilus ."))))

  (defun own/editing/cleanup-buffer ()
    "Do things the right way. ;)"
    (interactive)
    (own/editing/helper/whitespace-cleanup)
    (own/editing/helper/untabify-buffer)
    (own/editing/helper/indent-buffer)
    (own/editing/helper/delete-empty-final-lines)
    (own/editing/helper/make-standard-breaklines))

  (defun own/editing/helper/whitespace-cleanup ()
    (goto-char (point-min))
    (whitespace-cleanup)
    (delete-trailing-whitespace))


  (defun own/editing/helper/untabify-buffer ()
    (interactive)
    (untabify (point-min) (point-max)))


  (defun own/editing/helper/indent-buffer ()
    (interactive)
    (indent-region (point-min) (point-max)))


  (defun own/editing/helper/delete-empty-final-lines ()
    (goto-char (point-max))
    (delete-blank-lines))


  (defun own/editing/helper/make-standard-breaklines ()
    (set-buffer-file-coding-system 'unix)
    (goto-char (point-min))
    (while (re-search-forward "\r$" nil t)
      (replace-match ""))
    (set-buffer-file-coding-system 'utf-8))

  ;;
  ;; Misc
  ;;
  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

  ;; Remove emmet-mode keybindings
  (eval-after-load "emmet-mode"
    '(progn (define-key emmet-mode-keymap (kbd "C-j") nil)))

  (spacemacs/toggle-automatic-symbol-highlight-on)
  (spacemacs/set-default-font dotspacemacs-default-font)

  ;;
  ;; Override theme faces
  ;; To find out the face under the cursor: C-u C-x =
  ;; which is `what-cursor-position` with a prefix
  ;;
  (custom-theme-set-faces 'monokai
                          '(markdown-bold-face ((t (:foreground "#AF87FF"))))
                          '(markdown-italic-face ((t (:foreground "#e6db74"))))
                          `(markdown-header-face-1 ((t (:foreground "#5FD7FF" :height ,monokai-height-plus-4 :inherit markdown-header-face))))
                          `(markdown-header-face-2 ((t (:foreground "#87D700" :height ,monokai-height-plus-3 :inherit markdown-header-face))))
                          `(markdown-header-face-3 ((t (:foreground "#FF8C00" :height ,monokai-height-plus-2 :inherit markdown-header-face))))
                          `(markdown-header-face-4 ((t (:foreground "#AF87FF" :height ,monokai-height-plus-1 :inherit markdown-header-face))))
                          '(web-mode-html-tag-bracket-face ((t (:foreground "#888888"))))
                          )
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(byte-compile-warnings '(mapcar))
   '(evil-want-Y-yank-to-eol nil)
   '(package-selected-packages
     '(ace-jump-helm-line ace-link aggressive-indent all-the-icons
                          auto-compile auto-highlight-symbol
                          auto-yasnippet bind-map blacken browse-at-remote
                          centered-cursor-mode cmake-mode code-cells code-review
                          column-enforce-mode company-anaconda company-quickhelp
                          company-statistics company-web cython-mode devdocs
                          diff-hl diminish dired-quick-sort disable-mouse
                          dotenv-mode drag-stuff dumb-jump eat edit-indirect
                          elisp-def elisp-demos elisp-slime-nav emmet-mode emr
                          esh-help eshell-prompt-extras eshell-z ess-R-data-view
                          evil-anzu evil-cleverparens evil-escape
                          evil-evilified-state evil-goggles evil-iedit-state
                          evil-indent-plus evil-lion evil-surround
                          evil-textobj-line evil-unimpaired evil-visual-mark-mode
                          evil-visualstar expand-region eyebrowse
                          flyspell-correct-helm flyspell-popup gh-md git-link
                          git-messenger git-modes git-timemachine
                          gitignore-templates helm-ag helm-c-yasnippet helm-comint
                          helm-company helm-css-scss helm-descbinds helm-git-grep
                          helm-ls-git helm-make helm-mode-manager
                          helm-projectile helm-purpose helm-pydoc helm-swoop
                          helm-xref hide-comnt hl-todo holy-mode hybrid-mode
                          impatient-mode inspector js-doc js2-refactor json-mode
                          json-navigator json-reformat key-seq link-hint
                          live-py-mode livid-mode lorem-ipsum macrostep
                          markdown-toc monokai-theme multi-line multi-term
                          multi-vterm nameless neotree nerd-icons nodejs-repl
                          npm-mode overseer paradox
                          password-generator persp-mode pip-requirements pipenv
                          pippel poetry popwin posframe prettier-js pug-mode
                          py-isort pydoc pyenv-mode pylookup pytest quickrun
                          restart-emacs rjsx-mode sass-mode scss-mode shell-pop
                          slim-mode smeargle space-doc spaceline
                          spacemacs-purpose-popwin spacemacs-whitespace-cleanup
                          sphinx-doc sql-indent string-edit-at-point
                          string-inflection symbol-overlay symon tabbar tagedit
                          term-cursor terminal-here typescript-mode
                          undo-fu undo-fu-session vundo web-beautify web-mode
                          wgrep winum writeroom-mode ws-butler xclip
                          yaml-mode yapfify yasnippet-snippets)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   )
  )
