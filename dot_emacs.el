(set-language-environment "UTF-8")

(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default c-backspace-function 'backward-delete-char)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

(setq line-number-mode t)
(setq column-number-mode t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(load "/usr/share/emacs/site-lisp/clang-format-9/clang-format.el")
(global-set-key (kbd "<f1>") 'clang-format-region)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(require 'smarttabs)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(smart-tabs-insinuate 'c)
