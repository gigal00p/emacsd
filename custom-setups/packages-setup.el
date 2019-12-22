(require 'cl)
(require 'package)

(setq cfg-var:packages
      '(ace-jump-buffer
        ace-jump-mode
        ace-window             ; jump to other frame in emacs
        ag
        all-the-icons
        auto-complete
        browse-kill-ring
        cider
        clojure-mode
        clojure-snippets
        company
        docker
        dracula-theme
        elpy
        emmet-mode
        esup                   ; startup profiling
        expand-region
        exec-path-from-shell
        flycheck
        go-mode
        go-autocomplete
        htmlize
        key-chord
        magit
        monokai-theme
        move-text              ; move text lines up down
        multiple-cursors
        neotree
        paredit
        projectile
        quickrun
        rainbow-delimiters
        rg
        rust-mode
        solarized-theme
        slime
        slime-company
        terraform-mode
        yaml-mode
        yasnippet
        yasnippet-snippets))

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

(cfg:install-packages)


(provide 'packages-setup)
