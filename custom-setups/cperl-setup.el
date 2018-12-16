(require 'perltidy)

;;;;; PLSENSE
; (require 'plsense)
; ; ;; Key binding
; (setq plsense-popup-help-key "C-:")
; (setq plsense-display-help-buffer-key "M-:")
; (setq plsense-jump-to-definition-key "C->")

;; Make config suit for you. About the config item, eval the following sexp.
;; (customize-group "plsense")

;; Do setting recommemded configuration
;(plsense-config-default)
;;;;;;; PLSENSE

(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))

(custom-set-faces
       '(cperl-array-face ((t (:foreground "indian red" :weight bold))))
       '(cperl-hash-face ((t (:foreground "gold" :slant italic :weight bold)))))


; full cperl?
;(setq cperl-hairy t)

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

; Enable flymake by default in cperl-mode
;(add-hook 'cperl-mode-hook (lambda ()
;			     (flycheck-mode t)
			     ;(flymake-mode t) ;2016-04-16 - disabbled
			     ;(require 'perl-completion)
			     ;(perl-completion-mode t)
			     ;(require 'flymake-cursor) ;2016-04-16 - disabbled
;			     ))

; (add-hook  'cperl-mode-hook
;            (lambda ()
;              (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
;                (auto-complete-mode t)
;                (make-variable-buffer-local 'ac-sources)
;                (setq ac-sources
;                      '(ac-source-perl-completion)))))

(provide 'cperl-setup)
