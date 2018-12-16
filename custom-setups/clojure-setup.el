; turn on eldoc mode in clojure-mode
(add-hook 'cider-mode-hook #'eldoc-mode)

; ebable paredit in clojure-mode
(add-hook 'cider-repl-mode-hook #'paredit-mode)

; log nrepl messages
(setq nrepl-log-messages t)

; TAB as indent
(setq cider-repl-tab-command #'indent-for-tab-command)

; Configure whether the error buffer with stacktraces should be automatically shown on error:
;(setq cider-show-error-buffer nil)

; show port of nrepl connection
(setq nrepl-buffer-name-show-port t)

; Prevent C-c C-k from prompting to save the file corresponding to the buffer being loaded, if it's modified:
(setq cider-prompt-save-file-on-load nil)

; Change the result prefix for REPL evaluation (by default there's no prefix):
(setq cider-repl-result-prefix ";; => ")

; enable company mode in cider
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(key-chord-define-global "/." 'cider-repl-clear-buffer)

(provide 'clojure-setup)
