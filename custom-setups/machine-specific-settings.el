(cond (
       (string= (system-name) "DESKTOP-SP63KME" )

       ;; System locale to use for formatting time values.
       (setq system-time-locale "C")    ; Make sure that the weekdays in the
					; time stamps of your Org mode files and
					; in the agenda appear in English.

       ;(setq org-plantuml-jar-path "C:\\ITools\\ProgramFiles\\japps\\plantuml\\plantuml.jar")

       (custom-set-variables
	;; custom-set-variables was added by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
	'(column-number-mode t)
	'(custom-safe-themes
	  (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
	'(smooth-scroll-margin 2)
	)
       (custom-set-faces
	;; custom-set-faces was aadded by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
	'(default ((t (:family "Consolas" :foundry "unknown" :slant normal :weight normal :height 145 :width normal))))
	'(hl-line ((t (:underline nil))))))
      )

(provide 'machine-specific-settings)
