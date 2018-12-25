(require 'perltidy)


(defun perl-eval (beg end)
  "Run selected region as Perl code"
  (interactive "r")
  (shell-command-on-region beg end "perl")
  (goto-char (point-max)))


(defun mark-and-run ()
  (interactive)
  (save-excursion ; here we're saving point position before special form is evaluated
  (perl-eval (goto-char (point-min)) (goto-char (point-max))))) ; pass whole buffer to perl-eval and get back to initial point position

(after 'perl-mode
  (define-key perl-mode-map (kbd "<f9>") 'mark-and-run))

(after 'perl-mode
  (define-key perl-mode-map (kbd "<f8>") 'cperl-perldoc-at-point)
  (define-key perl-mode-map (kbd "C-h C-h P") 'cperl-perldoc)
  (define-key perl-mode-map (kbd "<f5>") 'perltidy-buffer)
  )

(provide 'perl-setup)
