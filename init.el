(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-file "~/.emacs.d/misc-files/dash.el")
(load-file "~/.emacs.d/misc-files/autothemer.el")

;; ========================== Spacemacs theme ==========================
;; (load-file "~/.emacs.d/themes/spacemacs-theme/spacemacs-common.el")
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/spacemacs-theme/")
;;(load-theme 'spacemacs-dark t)
;; =====================================================================

(load-theme 'darktooth t)

;; Enable line numbers in every buffer
(global-linum-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "420459d6eeb45aadf5db5fbcc3d6990b65141c104911f7359454fc29fa9d87a0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ======================= emacs-async ==========================
;; (add-to-list 'load-path "~/.emacs.d/misc-files/emacs-async/")
;; (mapc 'load (file-expand-wildcards "~/.emacs.d/misc-files/emacs-async/*.el"))
;; (autoload 'dired-async-mode "dired-async.el" nil t)
;; (dired-async-mode 1)
;; ==============================================================
