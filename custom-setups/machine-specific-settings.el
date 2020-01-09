(cond
 ((string-equal system-type "windows-nt")
  (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
   '(hl-line ((t (:underline nil))))))


 ((string-equal system-type "darwin")
  (setq system-time-locale "C")
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Hack" :foundry "unknown" :slant normal :weight normal :height 195 :width normal))))
   '(hl-line ((t (:underline nil))))))


 ((string-equal system-type "gnu/linux")
  (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
  (global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
  (setq system-time-locale "C")
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
   '(hl-line ((t (:underline nil)))))))


(provide 'machine-specific-settings)
