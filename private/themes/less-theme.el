;; less-theme.el --- A minimalistic custom theme for Emacs
;; Revision 3
;;
;; Copyright (C) 2008-2010, 2016 Jason R. Blevins <jrblevin@sdf.org>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

(deftheme less
  "A minimalistic and mostly monochromatic color scheme inspired
by `color-theme-late-night' and the Less is More theme for vim.")

(custom-theme-set-faces
 'less

 ;; Standard font lock faces
 '(default ((t (:background "#111111" :foreground "gray70"))))
 '(bold ((t (:bold t))))
 '(italic ((t (:bold t))))
 '(underline ((t (:bold t))))
 '(variable-pitch ((t (nil))))
 '(cursor ((t (:background "yellow"))))
 '(font-lock-comment-face ((t (:bold t :foreground "dim gray"))))
 '(font-lock-comment-delimiter-face ((t (:bold t :foreground "dim gray"))))
 '(font-lock-function-name-face ((t (:foreground "gray90"))))
 '(font-lock-variable-name-face ((t (:foreground "gray90"))))
 '(font-lock-constant-face ((t (:foreground "gray90"))))
 '(font-lock-doc-string-face ((t (:foreground "gray90"))))
 '(font-lock-doc-face ((t (:foreground "gray90"))))
 '(font-lock-preprocessor-face ((t (:foreground "gray90"))))
 '(font-lock-reference-face ((t (:foreground "gray90"))))
 '(font-lock-string-face ((t (:foreground "gray90"))))
 '(font-lock-type-face ((t (:bold t :foreground "white"))))
 '(font-lock-builtin-face ((t (:bold t :foreground "white"))))
 '(font-lock-keyword-face ((t (:bold t :foreground "white"))))
 '(font-lock-warning-face ((t (:bold t :foreground "red"))))

 ;; Emacs Interface
 '(fringe ((t (:background "#111" :foreground "#444444"))))
 ;; '(header-line ((t (:background "#333" :foreground "#000000"))))
 '(menu ((t (:background "#111" :foreground "#444444"))))
 '(minibuffer-prompt ((t (:foreground "white"))))
 '(modeline ((t (:background "gray20" :foreground "white"))))
 '(mode-line-inactive ((t (:background "gray20" :foreground "light gray"))))
 '(region ((t (:background "light gray" :foreground "black"))))
 '(secondary-selection ((t (:background "Aquamarine" :foreground "SlateBlue"))))
 '(tool-bar ((t (:background "#111" :foreground "#777777"))))
 '(tooltip ((t (:background "#333" :foreground "#777777"))))
 '(widget-button-face ((t (:bold t :foreground "#888"))))
 '(widget-field-face ((t (:bold t :foreground "#999"))))

 ;; Search
 '(isearch ((t (:foreground "black" :background "red"))))
 '(isearch-lazy-highlight-face ((t (:foreground "red"))))

 ;; Parenthesis matching
 '(show-paren-match-face ((t (:foreground "black" :background "light gray"))))
 '(show-paren-mismatch-face ((t (:foreground "black" :background "red"))))

 ;; Line highlighting
 '(highlight ((t (:background "#1f1f1f" :foreground nil))))
 '(highlight-current-line-face ((t (:background "#1f1f1f" :foreground nil))))
 '(hl-line ((t (:background "#1f1f1f" :foreground nil))))

 ;; Buttons
 '(button ((t (:bold t))))
 '(custom-button-face ((t (:bold t :foreground "#999999"))))

 ;; info, help and apropos faces
 '(info-header-node ((t (:foreground "#666666"))))
 '(info-header-xref ((t (:foreground "#666666"))))
 '(info-menu-5 ((t (:underline t))))
 '(info-menu-header ((t (:bold t :foreground "#666666"))))
 '(info-node ((t (:bold t :foreground "#888888"))))
 '(info-xref ((t (:bold t :foreground "#777777"))))

 ;; Helm
 `(helm-header ((t (:foreground "white" :weight bold))))
 `(helm-source-header ((t (:foreground "white" :weight bold))))
 `(helm-selection ((t (:background "#444444"))))
 `(helm-bookmark-directory ((t (:foreground "#CCCCCC"))))

 `(header-line ((t (:foreground "#999999"))))

 ;; Markdown
 ;; `(helm-source-header ((t (:foreground "red" :background "yellow" :weight bold))))
 ;; `(helm-header ((t (:foreground "yellow" :background "red" :weight bold))))
 `(markdown-header-face-1 ((t (:foreground "cyan" :height 220 :bold t))))
 `(markdown-header-face-2 ((t (:foreground "yellow" :height 200 :bold t))))
 `(markdown-header-face-3 ((t (:foreground "orange" :height 180 :bold t))))
 `(markdown-header-face-4 ((t (:foreground "green" :height 160 :bold t))))
 `(markdown-header-face-5 ((t (:foreground "white" :height 140 :bold t))))
 `(markdown-header-face-6 ((t (:foreground "blue" :height 120 :bold t))))
 `(markdown-inline-code-face ((t (:foreground "orange"))))
 `(markdown-italic-face ((t (:foreground "cyan" :italic t))))
 `(markdown-bold-face ((t (:foreground "cyan" :bold t))))
 `(markdown-pre-face ((t (:foreground "cyan"))))

 `(helm-ff-directory ((t (:foreground "#BBBBBB"))))
 `(helm-ff-file ((t (:foreground "#BBBBBB"))))
 ;; `(helm-ff-executable ((t (:foreground "blue" :background "red" :weight normal))))
 ;; `(helm-ff-invalid-symlink ((t (:foreground "orange" :background "red" :weight bold))))
 ;; `(helm-ff-symlink ((t (:foreground "blue" :background "yellow" :weight bold))))
 ;; `(helm-ff-prefix ((t (:foreground "blue" :background "red" :weight normal))))

 ;; `(helm-buffer-directory ((t (:foreground "black" :background "yellow"))))
 ;; `(helm-M-x-key ((t (:foreground "blue" :background "yellow"))))

 ;; `(helm-selection ((t (:background ,atom-one-light-gray))))
 ;; `(helm-selection-line ((t (:background ,atom-one-light-gray))))
 ;; `(helm-visible-mark ((t (:foreground ,atom-one-light-bg :foreground ,atom-one-light-orange-2))))
 ;; `(helm-candidate-number ((t (:foreground ,atom-one-light-green :background ,atom-one-light-bg-1))))
 ;; `(helm-separator ((t (:background ,atom-one-light-bg :foreground ,atom-one-light-red-1))))
 ;; `(helm-M-x-key ((t (:foreground ,atom-one-light-orange-1))))
 ;; `(helm-bookmark-addressbook ((t (:foreground ,atom-one-light-orange-1))))
 ;; `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
 ;; `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
 ;; `(helm-bookmark-gnus ((t (:foreground ,atom-one-light-purple))))
 ;; `(helm-bookmark-info ((t (:foreground ,atom-one-light-green))))
 ;; `(helm-bookmark-man ((t (:foreground ,atom-one-light-orange-2))))
 ;; `(helm-bookmark-w3m ((t (:foreground ,atom-one-light-purple))))
 ;; `(helm-match ((t (:foreground ,atom-one-light-orange-2))))
 ;; `(helm-buffer-not-saved ((t (:foreground ,atom-one-light-red-1))))
 ;; `(helm-buffer-process ((t (:foreground ,atom-one-light-mono-2))))
 ;; `(helm-buffer-saved-out ((t (:foreground ,atom-one-light-fg))))
 ;; `(helm-buffer-size ((t (:foreground ,atom-one-light-mono-2))))
 ;; `(helm-buffer-directory ((t (:foreground ,atom-one-light-purple))))
 ;; `(helm-grep-cmd-line ((t (:foreground ,atom-one-light-cyan))))
 ;; `(helm-grep-file ((t (:foreground ,atom-one-light-fg))))
 ;; `(helm-grep-finish ((t (:foreground ,atom-one-light-green))))
 ;; `(helm-grep-lineno ((t (:foreground ,atom-one-light-mono-2))))
 ;; `(helm-grep-finish ((t (:foreground ,atom-one-light-red-1))))
 ;; `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
 )

(provide-theme 'less)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; End:
;;; less-theme.el ends here
