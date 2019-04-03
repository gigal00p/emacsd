;(eval-after-load 'lisp-mode "C:/Users/krzysztof/quicklisp/slime-helper.el")
;(setq inferior-lisp-program "C:\\tools\\soft\\sbcl\\sbcl.exe")
;(add-to-list 'load-path "C:/tools/soft/sbcl")

(eval-after-load 'lisp-mode "~/quicklisp/slime-helper.el")
(setq inferior-lisp-program "sbcl")
(require 'slime)
; (slime-setup '(slime-fancy
;              slime-fuzzy
;              slime-fontifying-fu
;              slime-tramp
;              slime-asdf
;              slime-xref-browser
;              slime-highlight-edits
;              slime-sprof
;              slime-scratch
;              slime
;              company))

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

(load "/home/krzysztof/quicklisp/clhs-use-local.el" t)
(provide 'cl-setup)
