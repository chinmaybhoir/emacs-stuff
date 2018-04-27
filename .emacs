(package-initialize)
(load-theme 'material t)
(global-linum-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (badger)))
 '(custom-safe-themes
   (quote
    ("9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete)
(global-auto-complete-mode t)
;; Helm
;; (add-to-list 'load-path
;; 	     "~/.emacs.d/plugins/helm")
;; (require 'helm-config)

;; Projectile
(add-to-list 'load-path
	     "~/.emacs.d/plugins")
(require 'projectile)
(require 'git)
(require 'git-blame)
;; Solidity mode
(add-to-list 'load-path
              "~/.emacs.d/plugins/soliditymode")
(require 'solidity-mode)
(setq solidity-comment-style 'slash)

;; SLIME setup
(add-to-list 'load-path "~/.emacs.d/plugins/slime/slime/")
(add-to-list 'load-path "~/.emacs.d/plugins/slime/slime/contrib/") ; for optional features
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/clisp")
