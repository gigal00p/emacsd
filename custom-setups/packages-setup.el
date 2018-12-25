(require 'cl)
(require 'package)

(setq cfg-var:packages
      '(ace-jump-buffer
        ace-jump-mode
        ace-window             ; jump to other frame in emacs
        browse-kill-ring
        cider
        clojure-mode
        company
        emmet-mode
        esup                   ; startup profiling
        flycheck
        helm
        key-chord
        magit
        monokai-theme
        move-text              ; move text lines up down
        multiple-cursors
        paredit
        rainbow-delimiters
        solarized-theme
        slime
        yaml-mode
        yasnippet ))

(defun cfg:install-packages ()
  (let ((pkgs (remove-if #'package-installed-p cfg-var:packages)))
    (when pkgs
      (message "%s" "Emacs refresh packages database...")
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
      (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
      (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
      (package-refresh-contents)
      (message "%s" " done.")
      (dolist (p cfg-var:packages)
        (package-install p)))))

(package-initialize)

(cfg:install-packages)

(require 'key-chord)
(require 'multiple-cursors)
(global-company-mode)

(provide 'packages-setup)
