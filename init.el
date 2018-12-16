; Always prefer newer compilet elc files
(setq load-prefer-newer t)

;; Define additional load path
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))
(setq custom-setups (expand-file-name "custom-setups" user-emacs-directory))

; Set up load path
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path custom-setups)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))


; my custom setups
;(package-initialize)
(require 'packages-setup)
(require 'appearance)
(require 'keybindings)
(require 'custom-functions)
(require 'sane-defaults)
(require 'machine-specific-settings)

(after 'org-mode
  (require 'org-mode-setup))

(after 'clojure-mode
  (require 'clojure-setup))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(package-selected-packages
   (quote
    (ace-window yasnippet rainbow-mode multiple-cursors move-text monokai-theme magit key-chord helm flycheck esup emmet-mode browse-kill-ring ace-jump-mode ace-jump-buffer)))
 '(smooth-scroll-margin 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "unknown" :slant normal :weight normal :height 145 :width normal))))
 '(hl-line ((t (:underline nil))))
 '(org-level-1 ((t (:foreground "cornflower blue" :box nil :bold t))))
 '(org-level-2 ((t (:foreground "indian red" :bold t))))
 '(org-level-3 ((t (:foreground "cyan" :bold t))))
 '(org-level-4 ((t (:foreground "pink" :bold t)))))
