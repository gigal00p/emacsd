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
  ("." . browse-url-default-browser)
  ))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
