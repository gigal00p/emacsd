(require 'go-flymake)             ; compiled binary that must exist in GOPATH

(require 'quickrun)
(define-key go-mode-map (kbd "<f9>") 'quickrun)
(define-key go-mode-map (kbd "M-.") 'godef-jump)         ; Go to definition

(provide 'go-setup)
