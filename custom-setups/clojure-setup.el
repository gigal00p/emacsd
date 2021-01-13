; turn on eldoc mode in clojure-mode
(add-hook 'cider-mode-hook #'eldoc-mode)

; ebable paredit in clojure-mode
(add-hook 'cider-repl-mode-hook #'paredit-mode)

; log nrepl messages
(setq nrepl-log-messages t)

; TAB as indent
(setq cider-repl-tab-command #'indent-for-tab-command)

; Configure whether the error buffer with stacktraces should be automatically shown on error:
(setq cider-show-error-buffer t)

; Prevent C-c C-k from prompting to save the file corresponding to the buffer being loaded, if it's modified:
(setq cider-prompt-save-file-on-load nil)

(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)
(setq cider-repl-history-file "~/.cider-repl-history")

; enable company mode in cider
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(key-chord-define-global "/." 'cider-repl-clear-buffer)

(defun my-clojure-mode-hook ()
  (require 'flycheck-clj-kondo)
  (require 'clj-refactor)
  (clj-refactor-mode 1)
  (flycheck-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(provide 'clojure-setup)
