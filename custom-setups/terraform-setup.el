(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection '("/usr/local/bin/terraform-ls" "serve"))
                  :major-modes '(terraform-mode)
                  :server-id 'terraform-ls))

(add-hook 'terraform-mode-hook #'lsp-deferred)

(provide 'terraform-setup)
