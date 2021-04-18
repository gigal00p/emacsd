;;;;;;;;;;; LOOK AND FEEL ;;;;;;;;;;

; SHOW LINES AND COLUMNS
(setq column-number-mode t)
(setq line-number-mode t)

; DEACTIVATE TOOLBAR
(tool-bar-mode 0)

; DEACTIVATE MENUBAR
(menu-bar-mode 0)

; DEACTIVATE SCROLL-BAR
(scroll-bar-mode 0)

; MATCH PARENTHESIS
;; disabling meny bar in tui
(menu-bar-mode 0)

;;; parens matching
(show-paren-mode 1)

; DISPLAY EDITED FILE PATH IN WINDOW TITLE
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))


; HIGHLIGHT CURRENT LINE
(global-hl-line-mode 1)

; TO KEEP SYNTAX HIGHLIGHTING IN THE CURRENT LINE:
(set-face-foreground 'highlight nil)
(set-default 'cursor-type 'box)
(set-cursor-color "#ff0000")
(setq default-frame-alist '((cursor-color . "red")))

(custom-set-faces
   '(default ((t (:family "Consolas" :foundry "unknown" :slant normal :weight normal :height 145 :width normal))))
   '(hl-line ((t (:underline nil)))))

; COLOR THEME
(load-theme 'wombat t)
; (load-theme 'modus-operandi t)          ; Light theme
; (load-theme 'modus-vivendi t)           ; Dark theme



; REGION HIGHLIGHTING COLOUR
(set-face-attribute 'region nil :background "brown")


(provide 'appearance)
