; load slime-helper if exists
(when (load (expand-file-name "~/quicklisp/slime-helper.el") t)
       ())

(setq inferior-lisp-program "sbcl")

(setq inferior-lisp-program "sbcl --no-sysinit")
(require 'slime)

(slime-setup '(slime-asdf
               slime-autodoc
               slime-editing-commands
               slime-fancy
               slime-fontifying-fu
               slime-fuzzy
               slime-indentation
               slime-mdot-fu
               slime-package-fu
               slime-references
               slime-repl
               slime-sbcl-exts
               slime-scratch
               slime-company
               slime-xref-browser))

(setq slime-complete-symbol*-fancy t
      slime-completion-at-point-functions 'slime-fuzzy-complete-symbol
      slime-when-complete-filename-expand t
      slime-truncate-lines nil
      slime-autodoc-use-multiline-p t)

(add-hook 'slime-repl-mode-hook #'paredit-mode)

(when (load (expand-file-name "~/quicklisp/clhs-use-local.el") t)
  ())
(provide 'cl-setup)
