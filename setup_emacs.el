#! emacs --script

(require 'package)

;; Disable signature checking to be able to update expired keys
(setq package-check-signature nil)
(package-refresh-contents)
(package-install 'gnu-elpa-keyring-update)

;; Use MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 '(package-selected-packages
   '(clang-format
	 dockerfile-mode
	 gitlab-ci-mode
	 git-modes
	 jsonnet-mode
	 ;;markdown-mode
     rust-mode
	 smart-tab
	 yaml-mode
	 zig-mode)))

(package-refresh-contents)
(package-install-selected-packages)
