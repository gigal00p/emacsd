; Always prefer newer compilet elc files

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(require 'packages-setup)
(require 'appearance)

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

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (setq browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "/Applications/Firefox.app/Contents/MacOS/firefox"))

(require 'keychain-environment)
(keychain-refresh-environment)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(require 'keybindings)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
