;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-configuration-layers
   '(syntax-checking
     ;; pandoc
     ;; latex
     ;; ruby
     ;; rust
     ;; sql
     ;; php
     emacs-lisp
     markdown
     helm
     yaml
     csv
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
     ;; (javascript
     ;;  :variables
     ;;  js-indent-level 2
     ;;  js2-basic-offset 2)
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
      typescript-fmt-on-save t)
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
     own-keybindings
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
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-excluded-packages '(smartparens ess-R-object-popup)
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-additional-packages '()
   dotspacemacs-frozen-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs
initialization before layers configuration. You should not put
any user code in there besides modifying the variable values."
  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/")
  (setq-default
   dotspacemacs-default-font '("Roboto Mono"
                               :size 20
                               :width normal
                               :weight normal
                               :powerline-scale 1.1)
   dotspacemacs-startup-lists '((recents . 10) (bookmarks . 10))
   dotspacemacs-themes '(spacemacs-light spacemacs-dark atom-one-dark)
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

  (setq-default global-auto-revert-non-file-buffers t)
  (setq-default auto-fill-function 'do-auto-fill)
  (setq-default select-enable-clipboard t)
  (setq-default scroll-conservatively 101)
  (setq-default auto-revert-verbose nil)
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

  ;; `hippie-expand' overrides this key binding if it's put inside
  ;; my `own-keybindings' layer, so it goes here to give it priority
  (global-set-key (kbd "M-/") 'comment-or-uncomment-region)

  ;; Add standard JavaScript files into React because currently,
  ;; since they share extensions and the indicator at the top of
  ;; the file is depcreated, there's no other way to detect files
  (add-to-list 'auto-mode-alist '("\\.js\\'" . react-mode))

  ;; Remove emmet-mode keybindings (emmet-mode must be enabled for
  ;; React to work correctly, but its keybindings are not useful)
  (eval-after-load "emmet-mode"
    '(progn (define-key emmet-mode-keymap (kbd "C-j") nil)))

  ;; Hide unnecessary files
  (setq neo-show-hidden-files nil)

  ;; Change font for Mac OS X
  ;; (if (eq system-type 'darwin)
  ;;     (setq-default dotspacemacs-default-font '("Input"
  ;;                                               :size 16
  ;;                                               :width normal
  ;;                                               :weight normal
  ;;                                               :powerline-scale 1.1)))
  (spacemacs/set-default-font dotspacemacs-default-font))
