(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ; ("melpa" . "https://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

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
(require 'packages-setup)
(require 'appearance)

(require 'custom-functions)
(require 'sane-defaults)
(require 'platform-specific-settings)
(require 'org-mode-setup)
(require 'keybindings)
(require 'key-chord)
(require 'multiple-cursors)

(after 'clojure-mode
  (require 'clojure-setup))

(after 'lisp-mode
  (require 'cl-setup))

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(after 'python-mode
  (require 'python-setup))

(after 'go-mode
  (require 'golang-setup))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (setq browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"))

(require 'keychain-environment)
(keychain-refresh-environment)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-company-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
