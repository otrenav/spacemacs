:;; -*- mode: emacs-lisp -*-

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
     (vue
      :variables
      vue-backed 'dumb)
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
     (javascript
      :variables
      js-indent-level 2
      js2-basic-offset 2)
     (shell
      :variables
      shell-default-position 'bottom
      shell-default-height 30)
     (version-control
      :variables
      version-control-global-margin t
      version-control-diff-tool 'diff-hl)
     (python
      :variables
      python-test-runner 'pytest)
     (typescript
      :variables
      typescript-fmt-on-save t
      typescript-indent-level 2
      typescript-fmt-tool 'typescript-formatter)
     (spell-checking  ;; Prefixes: s
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
     own-keybindings
     own-javascript
     own-markdown
     own-editing
     own-windows
     own-python
     own-dired
     own-helm
     own-yaml
     own-html
     own-git
     own-ess
     )
   ;;
   ;; TODO: Look into these already installed packages:
   ;;
   ;; - move-text
   ;; - avy
   ;; - iedit
   ;; - adaptive-wrap
   ;;
   dotspacemacs-enable-lazy-installation nil
   dotspacemacs-excluded-packages '(smartparens csv
                                                iswitchb
                                                ess-R-object-popup
                                                undo-tree ;; Retest/Re-add
                                                paradox@spacemacs-navigation ;; Retest/Re-add
                                                aggressive-indent-mode pcre2el
                                                clean-aindent-mode smartparens hungry-delete
                                                eval-sexp-fu rainbow-delimiters
                                                highlight-indentation highlight-numbers
                                                highlight-parentheses
                                                hl-anything linum-relative indent-guide
                                                volatile-highlights evil-args
                                                evil-exchange evil-iedit-share
                                                evil-indent-textobject
                                                evil-jumper evil-lisp-state evil-nerd-commenter
                                                evil-matchit evil-numbers
                                                evil-search-highlight-persist
                                                evil-terminal-cursor-changer
                                                evil-tutor  recentf ace-window
                                                info+ open-junk-file desktop
                                                flx-ido buffer-move window-numbering
                                                fancy-battery zoom-frm
                                                smooth-scrolling vi-tilde-fringe
                                                golden-ratio auto-dictionary
                                                define-word google-translate spray helm-themes
                                                leuven-theme solarized-theme
                                                )
   dotspacemacs-additional-packages '(xclip)
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-install-packages 'used-only)
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-frozen-packages '()
  )

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs
initialization before layers configuration. You should not put
any user code in there besides modifying the variable values."
  ;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/")

  ;; Font
  (setq-default
   dotspacemacs-default-font '("Roboto Mono Medium" :size 22))
  (cond ((string-equal (downcase system-name) "olap")
         (progn
           (setq-default
            dotspacemacs-default-font '("Roboto Mono Medium" :size 36))
           )))

  ;; Others
  (setq-default
   dotspacemacs-startup-lists '((recents . 10) (bookmarks . 10))
   ;; dotspacemacs-themes '(less atom-one-dark monokai white)
   dotspacemacs-themes '(monokai atom-one-dark white)
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
   dotspacemacs-leader-key "SPC"
   dotspacemacs-helm-resize nil
   dotspacemacs-elpa-timeout 5
   dotspacemacs-elpa-https t
   ))

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

  ;; (define-key magit-hunk-section-map (kbd "RET") 'magit-diff-visit-file-other-window)
  ;; (define-key magit-file-section-map (kbd "RET") 'magit-diff-visit-file-other-window)

  (require 'helm-bookmark)

  (xclip-mode 1)
  (global-company-mode)
  (global-auto-revert-mode t)

  (setq-default neo-hidden-regexp-list '("^\\." "\\.cs\\.meta$" "\\.pyc$" "~$"
                                         "^#.*#$" "\\.elc$" "^__pycache__$"))
  (setq-default spaceline-highlight-face-func
                'spaceline-highlight-face-evil-state)
  (setq-default dotspacemacs-elpa-https nil)
  (setq-default dotspacemacs-elpa-timeout 20)
  (setq-default global-auto-revert-non-file-buffers t)
  (setq-default auto-fill-function 'do-auto-fill)
  (setq-default select-enable-clipboard t)
  (setq-default scroll-conservatively 101)
  (setq-default neo-window-fixed-size nil)
  (setq-default neo-show-hidden-files nil)
  (setq-default auto-revert-verbose nil)
  (setq-default ess-fancy-comments nil)
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
  (global-linum-mode 0)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)

  ;; Reset theme colors before loading next theme
  (defadvice load-theme (before theme-dont-propagate activate)
    (mapcar #'disable-theme custom-enabled-themes))

  ;; Override theme faces as needed
  ;; To find out the face under the cursor: C-u C-x =
  ;; which is `what-cursor-position` with a prefix
  (custom-theme-set-faces 'monokai
                          '(markdown-bold-face ((t (:foreground "#AF87FF"))))
                          '(markdown-italic-face ((t (:foreground "#e6db74"))))
                          `(markdown-header-face-1 ((t (:foreground "#5FD7FF" :height ,monokai-height-plus-4 :inherit markdown-header-face))))
                          `(markdown-header-face-2 ((t (:foreground "#87D700" :height ,monokai-height-plus-3 :inherit markdown-header-face))))
                          `(markdown-header-face-3 ((t (:foreground "#FF8C00" :height ,monokai-height-plus-2 :inherit markdown-header-face))))
                          `(markdown-header-face-4 ((t (:foreground "#AF87FF" :height ,monokai-height-plus-1 :inherit markdown-header-face))))
                          '(web-mode-html-tag-bracket-face ((t (:foreground "#888888"))))
                          )

  ;; `hippie-expand' overrides this key binding if it's put inside
  ;; my `own-keybindings' layer, so it goes here to give it priority

  (global-unset-key "\C-x\C-z")
  (global-unset-key "\C-x\o")

  (global-unset-key "\M-r")
  (global-set-key (kbd "M-r")     'anzu-query-replace-at-cursor)

  (global-unset-key "\C-o")
  (global-set-key (kbd "C-o")     'other-window)

  (global-set-key (kbd "C-\\")    'comment-or-uncomment-region)
  (global-set-key (kbd "C-Q")     'spacemacs/prompt-kill-emacs)
  (global-set-key (kbd "C-S-w")   'own/kill-all-buffers)
  (global-set-key (kbd "C-+")     'text-scale-increase)
  (global-set-key (kbd "C--")     'text-scale-decrease)
  (global-set-key (kbd "C-M-f")   'mark-defun)

  (global-set-key (kbd "C-M-/")   'helm-projectile-find-file)
  (global-set-key (kbd "M-/")     'helm-projectile-ag)


  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

  ;; Remove emmet-mode keybindings
  (eval-after-load "emmet-mode"
    '(progn (define-key emmet-mode-keymap (kbd "C-j") nil)))

  (spacemacs/set-default-font dotspacemacs-default-font))
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
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(xclip clipetty yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum white-theme which-key web-mode web-beautify vterm uuidgen use-package toc-org tide terminal-here tagedit tabbar symon symbol-overlay string-inflection string-edit sphinx-doc spaceline-all-the-icons smeargle slim-mode shell-pop scss-mode sass-mode rjsx-mode restart-emacs quickrun pytest pyenv-mode py-isort pug-mode prettier-js popwin poetry pippel pipenv pip-requirements persp-mode password-generator paradox overseer org-superstar npm-mode nose nodejs-repl neotree nameless multi-term multi-line monokai-theme mmm-mode markdown-toc macrostep lorem-ipsum livid-mode live-py-mode link-hint key-seq json-navigator json-mode js2-refactor js-doc importmagic impatient-mode hybrid-mode hl-todo helm-xref helm-swoop helm-pydoc helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-ls-git helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy forge font-lock+ flyspell-popup flyspell-correct-helm flycheck-package flycheck-elsa eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-textobj-line evil-surround evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-escape evil-ediff evil-collection evil-cleverparens evil-anzu ess-R-data-view eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish diff-hl cython-mode company-web company-statistics company-quickhelp company-anaconda column-enforce-mode centered-cursor-mode browse-at-remote blacken bind-map auto-yasnippet auto-highlight-symbol auto-compile atom-one-dark-theme aggressive-indent ace-link ace-jump-helm-line ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
