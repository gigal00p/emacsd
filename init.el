(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

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

; Initialize path from shell early
(exec-path-from-shell-initialize)
(require 'platform-specific-settings)
(require 'packages-setup)
(require 'appearance)
(require 'custom-functions)
(require 'sane-defaults)

(require 'org-mode-setup)
(require 'keybindings)
(require 'key-chord)
(require 'multiple-cursors)

(after 'clojure-mode
  (require 'clojure-setup))

(after 'lisp-mode
  (require 'cl-setup))

(after 'python-mode
  (require 'python-setup))

(after 'go-mode
  (require 'golang-setup))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
