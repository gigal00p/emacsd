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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(helm-follow-mode-persistent t)
 '(package-selected-packages
   (quote
    (yasnippet-snippets yaml-mode solarized-theme slime-company scala-mode rust-mode rg rainbow-delimiters quickrun projectile paredit multiple-cursors move-text monokai-theme magit key-chord htmlize helm-descbinds helm-ag go-mode go-autocomplete flycheck expand-region exec-path-from-shell esup emmet-mode elpy clojure-snippets cider browse-kill-ring ag ace-window ace-jump-mode ace-jump-buffer)))
 '(smooth-scroll-margin 2))

; my custom setups
(require 'packages-setup)
(require 'appearance)
(require 'keybindings)
(require 'custom-functions)
(require 'sane-defaults)
(require 'machine-specific-settings)
(require 'org-mode-setup)

(after 'clojure-mode
  (require 'clojure-setup))

(after 'lisp-mode
  (require 'cl-setup))

(after 'python-mode
  (require 'python-setup))

(after 'go-mode
  (require 'golang-setup))

(require 'helm-descbinds)
(helm-descbinds-mode)

(setq
 browse-url-browser-function
 '(
  ("wikipedia\\.org" . browse-url-firefox)
  ("github" . browse-url-chrome)
  ("quicklisp" . browse-url-firefox)
  ("thefreedictionary\\.com" . eww-browse-url)
  ("." . browse-url-default-browser)))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

(require 'keychain-environment)
(keychain-refresh-environment)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
