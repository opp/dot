(setq custom-file "~/.emacs.custom.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      backup-by-copying t
      version-control t
      kept-new-versions 6
      kept-old-versions 3
      delete-old-versions t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; start emacs with `--maximized`
; (setq default-frame-alist '((fullscreen . maximized)))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-screen t)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(cua-mode t)
(global-hl-line-mode t)

(setq whitespace-style '(face tabs spaces space-mark tab-mark))
(global-whitespace-mode t)

(defun remove-whitespace-and-tabs ()
  (interactive)
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max)))

(add-hook 'before-save-hook 'remove-whitespace-and-tabs)

;; show packages from melpa too
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;;; company
(require 'company)
(global-company-mode)

;;; move text
(require 'move-text)
(move-text-default-bindings)

;;; set default font
;; (set-frame-font "{font name} {font-size}" nil t)
(set-frame-font "Iosevka Fixed 16" nil t)

;; line numbers
(global-display-line-numbers-mode t)
(column-number-mode t)
(setq display-line-numbers-type 'relative)

;; buffer completion
(ido-mode t)
(ido-everywhere t)
;; completion for other areas too
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;; auto close bracket insertion
(electric-pair-mode t)

(load-file custom-file)
