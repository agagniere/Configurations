(set-language-environment "UTF-8")

; Indentation
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default c-backspace-function 'backward-delete-char)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(c-set-offset 'innamespace 0)

; Info shown when editing
(setq line-number-mode t)
(setq column-number-mode t)

; Behavior when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Use MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Use smartabs from MELPA
(smart-tabs-insinuate 'c)

; Integrate clang-format
(load "/usr/share/emacs/site-lisp/clang-format-14/clang-format.el")
(global-set-key (kbd "<f1>") 'clang-format-region)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("6b6bad9d7a844d5de02761a1bd155869512f47bd6a7b14d799eea5c37f08ead4" default))
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(catppuccin-theme badger-theme dockerfile-mode yaml-mode jsonnet-mode cmake-mode smart-tabs-mode smart-tab)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'yaml-mode)
(require 'jsonnet-mode)
