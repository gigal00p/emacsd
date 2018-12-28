;;;;;;;;;;; LOOK AND FEEL ;;;;;;;;;;
;;; pokazuje linie i kolumny
(setq column-number-mode t)
(setq line-number-mode t)

;; disabling meny bar in tui
(menu-bar-mode 0)

;;; parens matching
(show-paren-mode 1)
;;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Display edited file path in window title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; COLOR THEME ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-theme 'wombat t)

; Kolor podswietlania
(set-face-attribute 'region nil :background "brown")

; HIGHLIGHT CURRENT LINE
(global-hl-line-mode 1)

;To keep syntax highlighting in the current line:
(set-face-foreground 'highlight nil)

(set-default 'cursor-type 'box)
(set-cursor-color "#ff0000")

(setq default-frame-alist '((cursor-color . "red")))

(provide 'appearance)
