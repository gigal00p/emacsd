;; TODO: work on block below because of 2 level of eval after `after' macro probably
;; Below block works, but only if it's `require' in .init.el file.
;; Don't work with `after' macro.


(defun my-c-mode-indent-region ()
  (interactive)
  (save-excursion ; here we're saving point position before special form is evaluated
  (indent-region (goto-char (point-min)) (goto-char (point-max))))) ; pass whole buffer to indent-region

(defun kfwz-execute-c-program ()
  "Compile and run C programs directly from within emacs"
  (interactive)
  (defvar foo)
  (setq foo (concat "gcc -Wall " (buffer-name) " && a.exe" ))
  (shell-command foo))

(defun my-c-mode-config ()
  "Custom settings for c-mode"
  ;; keybindings
  (local-set-key (kbd "<f9>") 'kfwz-execute-c-program)
  (local-set-key (kbd "<f5>") 'my-c-mode-indent-region)
  ;; other c-mode settings
  (setq c-default-style "linux"
	c-basic-offset 4)
  )

(add-hook 'c-mode-hook 'my-c-mode-config)

(provide 'c-setup)
