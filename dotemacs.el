;*******************************************************************************;
;                                                                               ;
;                                                          :::      ::::::::    ;
;    dotemacs                                            :+:      :+:    :+:    ;
;                                                      +:+ +:+         +:+      ;
;    by: thor <thor@42.fr>                           +#+  +:+       +#+         ;
;                                                  +#+#+#+#+#+   +#+            ;
;    Created: 2013/06/18 14:01:14 by thor               #+#    #+#              ;
;    Updated: 2017/02/07 18:00:24 by angagnie         ###   ########.fr        ;
;                                                                               ;
;*******************************************************************************;

; Load general features files
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(add-to-list 'auto-mode-alist '("\\.cu$" . c-mode))

;; (set-language-environment "UTF-8")
;; (prefer-coding-system 'utf-8)
;; (setq coding-system-for-read 'utf-8)
;; (setq coding-system-for-write 'utf-8)

;; (setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; (set-selection-coding-system 'utf-8)

; Set default emacs configuration
(set-language-environment "UTF-8")
;(setq-default font-lock-global-modes nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                             64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
(setq line-number-mode t)
(setq column-number-mode t)




(global-set-key (kbd "<kp-7>") "\C-a\C- \C-n\M-w\C-y\C-p")
(global-set-key (kbd "<kp-8>") 'replace-string)
(global-set-key (kbd "<kp-9>") 'goto-line)

(global-set-key (kbd "<kp-1>") "\C-a\C-k\177\C-a\C-n")
(global-set-key (kbd "<kp-0>") "\C-a\C-m\C-b\C-y\C-a")

(global-set-key (kbd "<kp-3>") 'toggle-comment-on-line)
(global-set-key (kbd "<kp-6>") 'comment-or-uncomment-region)


(global-set-key (kbd "<kp-add>") 'forward-paragraph)
(global-set-key (kbd "<kp-subtract>") 'backward-paragraph)
(global-set-key (kbd "<kp-enter>") "\C-m")

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))


;*******************************************************************************;

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key (kbd "C-x C-y ")
                (lambda()
                  "replace spaces"
                  (interactive)
                  (setq colnb (current-column))
                  (setq linenb (line-number-at-pos))
                  (replace-string "    " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "   " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "  " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "\t " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  ))
(global-set-key [(f2)]
                '(lambda()
                   "tab shortcut"
                   (interactive)
                   (insert "\t")
                   )
                )
(defun main_minimum1()
 "main_minimum1"
 (interactive)
 (insert
  "int\t\tmain(int ac, char **av)
{
\t
\treturn (0);
}")
 (previous-line 3)
 (move-end-of-line 1)
 )
(global-set-key [f8] 'main_minimum1)

(defun comment-template()
 "EZ comment"
 (interactive)
 (insert
  "/*
**
*/")
 (previous-line 1)
 (move-end-of-line 1)
 )
(global-set-key [f7] 'comment-template)

(defun comment-template2()
 "EZ comment 2"
 (interactive)
 (insert
  "/*
** -----=====    =====-----
*/")
 (previous-line 1)
 (move-end-of-line 1)
 )
(global-set-key [f6] 'comment-template2)

(defun php-debug-func()
  "php-debug-func"
  (interactive)
  (insert
   "var_dump();")
  (indent-according-to-mode)
  (backward-char)
  (backward-char)
  )
(defun c-debug-func()
  "c-debug-func"
  (interactive)
  (insert
   "printf(\"\\n\");")
  (indent-according-to-mode)
  (backward-char)
  (backward-char)
  (backward-char)
  (backward-char)
  (backward-char)
  )
(global-set-key (kbd "<f1>")
                '(lambda()
                   "global-debug-func-func"
                   (interactive)
                   (previous-line)
                   (move-end-of-line 1)
                   (newline)
                   (if (string= (file-name-extension (buffer-file-name)) "cpp")
                       (cpp-debug-func)
                     (if (string= (file-name-extension (buffer-file-name)) "hpp")
                         (cpp-debug-func)
                       (if (string= (file-name-extension (buffer-file-name)) "tpp")
                           (cpp-debug-func)
                         (if (string= (file-name-extension (buffer-file-name)) "lua")
                             (lua-debug-func)
                           (if (string= (file-name-extension (buffer-file-name)) "php")
                               (php-debug-func)
                             (if (string= (file-name-extension (buffer-file-name)) "c")
                                 (c-debug-func)
                               (if (string= (file-name-extension (buffer-file-name)) "ml")
                                   (ocaml-debug-func)
                                 )))))))
                   )
                )
