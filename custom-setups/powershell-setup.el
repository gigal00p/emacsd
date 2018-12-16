(autoload 'powershell-mode "powershell-mode" "A major mode for PowerShell" t)
(add-to-list 'auto-mode-alist '("\\.ps1$" . powershell-mode))

(defun my-execute-powershell-script ()
  "Execute current powershell buffer"
  (interactive)
  (defvar ps_script)
  (setq ps_script (concat "powershell " ".\\" (buffer-name)))
  (shell-command ps_script))

(defun my-powershell-mode-config ()
  "Custom settings for c-mode"
  (local-set-key (kbd "<f9>") 'my-execute-powershell-script))

(after 'powershell-mode
  (define-key powershell-mode-map (kbd "<f9>") 'my-execute-powershell-script))

(provide 'powershell-setup)
