(require 'perltidy)

(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))

(custom-set-faces
       '(cperl-array-face ((t (:foreground "indian red" :weight bold))))
       '(cperl-hash-face ((t (:foreground "gold" :slant italic :weight bold)))))

(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t)

(defun perl-eval (beg end)
  "Run selected region as Perl code"
  (interactive "r")
  (shell-command-on-region beg end "perl")
  (goto-char (point-max)))

(global-set-key [f5] 'perltidy-buffer)
(global-set-key [f8] 'cperl-perldoc-at-point)

(defun mark-and-run ()
  (interactive)
  (save-excursion ; here we're saving point position before special form is evaluated
  (perl-eval (goto-char (point-min)) (goto-char (point-max))))) ; pass whole buffer to perl-eval and get back to initial point position


(after 'cperl-mode
  (define-key cperl-mode-map (kbd "<f9>") 'mark-and-run))

(provide 'cperl-setup)
