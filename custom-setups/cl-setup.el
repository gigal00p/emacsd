(eval-after-load 'lisp-mode "C:/Users/krzysztof/quicklisp/slime-helper.el")

(setq inferior-lisp-program "C:\\tools\\soft\\sbcl\\sbcl.exe")

(add-to-list 'load-path "C:/tools/soft/sbcl")

(require 'slime)

(slime-setup '(slime-fancy slime-tramp slime-asdf slime-xref-browser slime-highlight-edits slime-sprof slime company))

(provide 'cl-setup)
