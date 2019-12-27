;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-configuration-layers
   '(
     syntax-checking  ;; Prefixes: e, t
     emacs-lisp
     markdown
     helm
     yaml
     git
     ess
     (html
      :variables
      css-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-attr-indent-offset 2
      web-mode-markup-indent-offset 2)
     (react
      :variables
      js-indent-level 2
      js2-basic-offset 2)
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
      version-control-diff-tool 'diff-hl
      version-control-global-margin t)
     (python
      :variables
      python-test-runner 'pytest)
     (typescript
      :variables
      typescript-fmt-tool 'typescript-formatter
      typescript-indent-level 2
      typescript-fmt-on-save t)
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
     own-ess
     )
   ;;
   ;; TODO: Look into these already installed packages:
   ;;
   ;; - move-text
   ;; - avy
   ;; - iedit
   ;; - expand-region
   ;; - adaptive-wrap
   ;;
   dotspacemacs-enable-lazy-installation nil
   dotspacemacs-excluded-packages '(smartparens csv
                                                ess-R-object-popup
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
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-additional-packages '(minimal-theme)
   dotspacemacs-frozen-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs
initialization before layers configuration. You should not put
any user code in there besides modifying the variable values."
  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/")

  ;; Font
  (setq-default
   dotspacemacs-default-font '("Roboto Mono Medium" :size 24))
  (cond ((string-equal system-name "OLAP")
         (progn
           (setq-default
            dotspacemacs-default-font '("Roboto Mono Medium" :size 18))
           )))

  ;; Others
  (setq-default
   dotspacemacs-startup-lists '((recents . 10) (bookmarks . 10))
   dotspacemacs-themes '(less atom-one-dark monokai white)
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
  (require 'helm-bookmark)

  (global-company-mode)
  (global-git-commit-mode t)
  (global-git-gutter-mode t)
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

  ;; `hippie-expand' overrides this key binding if it's put inside
  ;; my `own-keybindings' layer, so it goes here to give it priority
  (global-set-key (kbd "C-;") 'comment-or-uncomment-region)
  (global-set-key (kbd "M-/") 'helm-projectile-grep)

  ;; Add standard JavaScript files into React because currently,
  ;; since they share extensions and the indicator at the top of
  ;; the file is deprecated, there's no other way to detect files
  (add-to-list 'auto-mode-alist '("\\.js\\'" . react-mode))

  ;; Remove emmet-mode keybindings (emmet-mode must be enabled for
  ;; React to work correctly, but its keybindings are not useful)
  (eval-after-load "emmet-mode"
    '(progn (define-key emmet-mode-keymap (kbd "C-j") nil)))

  (spacemacs/set-default-font dotspacemacs-default-font))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [("#181818" . "#282828")
    ("#ab4642" . "#dc9656")
    ("#a1b56c" . "#383838")
    ("#f7ca88" . "#383838")
    ("#7cafc2" . "#585858")
    ("#ab4642" . "#b8b8b8")
    ("#86c1b9" . "#d8d8d8")
    ("#ffffff" . "#ffffff")])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"])
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "930f7841c24772dda4f22291e510dac1d58813b59dcb9f54ad4f1943ea89cdcd" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (monokai-pro-theme lv flycheck-rust toml-mode racer cargo rust-mode yapfify yaml-mode xterm-color ws-butler winum which-key web-mode web-beautify uuidgen use-package toc-org tide typescript-mode tagedit tabbar spaceline powerline smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs pyvenv pytest pyenv-mode py-isort pug-mode prettier-js popwin pip-requirements persp-mode paradox spinner orgit org-plus-contrib org-bullets neotree multi-term multi-line shut-up move-text mmm-mode minimal-theme markdown-toc markdown-mode magit-gitflow magit-popup macrostep lorem-ipsum livid-mode skewer-mode simple-httpd live-py-mode link-hint less-css-mode key-seq key-chord json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc hydra hy-mode hl-todo helm-swoop helm-pydoc helm-projectile projectile helm-mode-manager helm-make helm-gitignore request helm-flx flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-popup flyspell-correct-helm flyspell-correct flycheck-pos-tip flycheck pkg-info epl fill-column-indicator eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-surround evil-mc evil-magit magit transient git-commit with-editor evil-indent-plus evil-iedit-state iedit evil-escape evil-ediff evil-anzu anzu evil goto-chg undo-tree ess-smart-equals ess-R-data-view ctable ess julia-mode eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump diminish diff-hl cython-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-quickhelp pos-tip company-anaconda company column-enforce-mode coffee-mode bind-map bind-key auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed anaconda-mode pythonic f dash s aggressive-indent adaptive-wrap ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup)))
 '(vc-annotate-background "#ffffff")
 '(vc-annotate-color-map
   (quote
    ((20 . "#ab4642")
     (50 . "#dc9656")
     (80 . "#f7ca88")
     (110 . "#a1b56c")
     (140 . "#86c1b9")
     (170 . "#7cafc2")
     (200 . "#ab4642")
     (230 . "#a16046")
     (260 . "#181818")
     (290 . "#282828")
     (320 . "#383838")
     (350 . "#585858"))))
 '(vc-annotate-very-old-color "#585858"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
