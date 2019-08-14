(cond (
       (string= (system-name) "techcrossing" )
       (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
       (custom-set-variables
	'(column-number-mode t)
	'(custom-safe-themes
	  (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
	'(smooth-scroll-margin 2))
       (custom-set-faces
	'(default ((t (:family "Monospace" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
	'(hl-line ((t (:underline nil))))))

      ((string= (system-name) "walkiewk-04JG5H")
       (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
       (custom-set-variables
	'(column-number-mode t)
	'(custom-safe-themes
	  (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
	'(smooth-scroll-margin 2))
       (custom-set-faces
	'(default ((t (:family "Hack" :foundry "unknown" :slant normal :weight normal :height 195 :width normal))))
	'(hl-line ((t (:underline nil))))))

      ((string= (system-name) "daemon")
       (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
       (global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
       (string= (system-name) "vz279932" )

       ;; System locale to use for formatting time values.
       (setq system-time-locale "C")    ; Make sure that the weekdays in the
					; time stamps of your Org mode files and
					; in the agenda appear in English.

       ;(setq org-plantuml-jar-path "C:\\ITools\\ProgramFiles\\japps\\plantuml\\plantuml.jar")

       (custom-set-variables
	'(column-number-mode t)
	'(custom-safe-themes
	  (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
	'(smooth-scroll-margin 2))
       (custom-set-faces
	'(default ((t (:family "Hack" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
	'(hl-line ((t (:underline nil))))))

      ((string= (system-name) "latitude-5490")
       (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
       (global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
       (custom-set-variables
	'(column-number-mode t)
	'(custom-safe-themes
	  (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
	'(smooth-scroll-margin 2))
       (custom-set-faces
	'(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
	'(hl-line ((t (:underline nil)))))))

(provide 'machine-specific-settings)
