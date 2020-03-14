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
