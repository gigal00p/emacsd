(when (string-equal system-type "windows-nt")
  (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
   '(hl-line ((t (:underline nil))))))

(when (string-equal system-type "darwin")
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (require 'keychain-environment)
  (keychain-refresh-environment)
  (setq system-time-locale "C")

  (setq browse-url-browser-function 'browse-url-default-macosx-browser)

  (setq dired-use-ls-dired t
        insert-directory-program "/usr/local/bin/gls"
        dired-listing-switches "-laGh1v --group-directories-first")

  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2)))

(when (string-equal system-type "gnu/linux")
  (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
  (global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
  (setq dired-use-ls-dired t
        dired-listing-switches "-laGh1v --group-directories-first")
  (setq system-time-locale "C")
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
   '(hl-line ((t (:underline nil))))))

(when (string-equal system-type "berkeley-unix")
  (setq system-time-locale "C") ; Make sure that the weekdays in timestamps in org mode appear in English
  (global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
  (setq system-time-locale "C")
  (custom-set-variables
   '(column-number-mode t)
   '(custom-safe-themes
     (quote ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
   '(smooth-scroll-margin 2))
  (custom-set-faces
   '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 135 :width normal))))
   '(hl-line ((t (:underline nil))))))

(provide 'platform-specific-settings)
