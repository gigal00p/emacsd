(require 'cl)
(require 'package)

(setq cfg-var:packages '(
       emmet-mode
       flycheck
       monokai-theme
       rainbow-mode
       browse-kill-ring
       ace-jump-mode
       ace-jump-buffer
       key-chord
       helm
       magit
       multiple-cursors
       ace-window ; C-F12 - jump to other frame in emacs
       move-text ; move text lines up down
       esup ; startup profiling, M-x esup
       yasnippet))

(defun cfg:install-packages ()
    (let ((pkgs (remove-if #'package-installed-p cfg-var:packages)))
        (when pkgs
            (message "%s" "Emacs refresh packages database...")
            (package-refresh-contents)
            (message "%s" " done.")
            (dolist (p cfg-var:packages)
                (package-install p)))))

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(cfg:install-packages)

(require 'key-chord)
(require 'multiple-cursors)

(provide 'packages-setup)
