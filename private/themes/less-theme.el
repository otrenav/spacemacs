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
 '(default ((t (:background "#000000" :foreground "gray70"))))
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
 '(header-line ((t (:background "#333" :foreground "#000000"))))
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

  ;; Powerline
  ;; `(powerline-active0 ((t (:foreground "green"))))
  ;; `(powerline-active1 ((t (:foreground "blue"))))
  ;; `(powerline-active2 ((t (:foreground "yellow"))))
  ;; `(powerline-inactive0 ((t (:foreground "green"))))
  ;; `(powerline-inactive1 ((t (:foreground "blue"))))
  ;; `(powerline-inactive2 ((t (:foreground "yellow"))))
  ;; `(spacemacs-normal-face ((t (:inherit 'mode-line :foreground "black"
  ;; :background "white"))))
 )

(provide-theme 'less)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; End:
;;; less-theme.el ends here
