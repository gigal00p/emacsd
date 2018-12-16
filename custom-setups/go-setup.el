(global-auto-complete-mode 1)     ; loads autocomplete globally
(require 'auto-complete-config)
(add-hook 'go-mode-hook #'auto-complete-mode 1)

;(require 'go-mode-autoloads)
(require 'go-autocomplete)        ; server listtening on specified port
(require 'go-flymake)             ; compiled binary that must exist in GOPATH


(require 'quickrun)
(define-key go-mode-map (kbd "<f9>") 'quickrun)
(define-key go-mode-map (kbd "M-.") 'godef-jump)         ; Go to definition

(provide 'go-setup)
