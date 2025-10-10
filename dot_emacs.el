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
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

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
   '(clang-format dockerfile-mode git-modes gitlab-ci-mode
				  gnu-elpa-keyring-update jsonnet-mode markdown-mode
				  rust-mode smart-tab yaml-mode zig-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(font-lock-add-keywords 'c-mode
 '(("\\<and\\>" . font-lock-keyword-face)
   ("\\<or\\>" . font-lock-keyword-face)
   ("\\<thread_local\\>" . font-lock-keyword-face)
   ("\\<not\\>" . font-lock-keyword-face)))

(require 'clang-format)
(require 'dockerfile-mode)
(require 'gitlab-ci-mode)
(require 'jsonnet-mode)
(require 'rust-mode)
(require 'smart-tab)
(require 'yaml-mode)
(require 'zig-mode)

(global-set-key (kbd "<f1>") 'clang-format-region)

;;(require 'markdown-mode)
;;(require 'glsl-mode)
;;(require 'xpm)
;;(require 'svg-mode-line-themes)
;;(require 'anaconda-mode)
;;(require 'nix-mode)
;; catppuccin-theme badger-theme
