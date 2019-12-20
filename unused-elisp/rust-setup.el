; (autoload 'rust-mode "rust-mode" nil t)
; (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
; 
; (add-hook 'rust-mode-hook #'racer-mode)
; (add-hook 'racer-mode-hook #'eldoc-mode)
; (add-hook 'racer-mode-hook #'company-mode)
; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
; 
; (after 'rust-mode
;   (define-key rust-mode-map (kbd "M-a") 'rust-beginning-of-defun)
;   (define-key rust-mode-map (kbd "M-e") 'rust-end-of-defun))
; 
; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
; (setq company-tooltip-align-annotations t)
; 
; 
; (require 'flycheck)
; (require 'flycheck-rust)
; (require 'electric)
; 
; (provide 'rust-setup)
