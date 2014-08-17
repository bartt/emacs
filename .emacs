(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Use generic mode for obscure languages
(load-library "generic-x")

;; Turn of the anoying beep
;; Get a visual signal instead
(setq visible-bell 1)

;; Turn on font-lock in all modes that support it
;; Maximum colors
(cond ((fboundp 'global-font-lock-mode)
       (global-font-lock-mode t)
       (setq font-lock-maximum-decoration t)))

;; Display day and date on the mode line
(setq
   display-time-day-and-date t
   display-time-24hr-format t)
(display-time)

;; Display columns number on the mode line
(column-number-mode t)

;; Diplay current function if supported by major mode.
(which-function-mode t)

;; Save cursor location in file in between sessions.
(setq save-place t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Nice and comfortable buffer selection by C-x C-b. An alternative
;; for list-buffers referable electric-buffer-list Support buffer
;; cycling with bs-cycle-next and bs-cycle-previous.
(require 'bs)
(global-set-key "\C-x\C-b" 'bs-show)

;; This minor mode will try to complete any input you type into the
;; minibuffer.
(icomplete-mode 1)

;; 4 spaces. NO tabs. Period. A lot of you like to use tabs, but the
;; fact of the matter is that in a distributed development
;; environment, when the cvs commit messages get sent to a mailing
;; list, they are almost impossible to read if you use tabs.
(setq-default tab-width 4 indent-tabs-mode nil)

;; CSS configuration
(setq cssm-indent-function 'cssm-c-style-indenter)
(setq cssm-indent-level 4)

;; use Unix-style line endings
(setq-default buffer-file-coding-system 'undecided-unix)

;; Do not restrict editing in this buffer to the current region.
(put 'narrow-to-region 'disabled nil)

;; Allow entire regions to be upcased.
(put 'upcase-region 'disabled nil)

;; Auto insert headers to new files.
(require 'autoinsert)
(auto-insert-mode)
(setq auto-insert-query nil)

;; Load extended dired mode

(require 'dired-x)

(ansi-color-for-comint-mode-on)

;; Keyboard shortcut to find file at point similar to \M-gg for
;; goto-line.
(global-set-key "\M-gf" 'find-file-at-point)

;; Automatically uncompress compressed files.
(setq auto-compression-mode 't)

;; Ignore case
(setq case-fold-search 't)

;; Use UTF-8 by default
(setq current-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Move-end-of-line (C-e) moves to end of element
(setq nxml-sexp-element-flag 't)

;; A slash (/) completes the closing tag
(setq nxml-slash-auto-complete-flag 't)

;; Highlight matchin parenthesis
(setq show-paren-mode nil)
(show-paren-mode)

;; Highlight marked region
(setq transient-mark-mode 't)

;; Turn off toolbar
(setq tool-bar-mode nil)

;; Make buffers with identical names unique
(setq uniquify-buffer-name-style 'forward)

(setq warning-suppress-types nil)

;; Woman should open man pages in the same frame
(setq woman-use-own-frame nil)

;; Direct access to finding files using locate
(require 'locate)

;; Start interactive do
(require 'ido)
(ido-mode 't)

;; Global key binding to expand region
(global-set-key (kbd "C-c r") 'er/expand-region)

;; To make `iy-go-to-char' works better with `multiple-cursors', add
;; `iy-go-to-char-start-pos' to `mc/cursor-specific-vars' when mc is loaded:
(require 'multiple-cursors)
(add-to-list 'mc/cursor-specific-vars 'iy-go-to-char-start-pos)

;; Go to next CHAR which is similar to "f" and "t" in vim
(global-set-key (kbd "C-c f") 'iy-go-to-char)
(global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c ;") 'iy-go-to-or-up-to-continue)
(global-set-key (kbd "C-c ,") 'iy-go-to-or-up-to-continue-backward)

;; Yet another snippet extension
(yas-global-mode 1)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(c-default-style "gnu")
 '(js2-basic-offset 2)
 '(js2-missing-semi-one-line-override t)
 '(split-height-threshold nil)
 '(split-width-threshold nil)
 '(tab-width 2))
