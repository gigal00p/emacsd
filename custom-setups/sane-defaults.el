; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; Allow pasting selection outside of Emacs
(setq select-enable-clipboard t)

; disable bell
(setq visible-bell 1)

;; Auto refresh buffers
(global-auto-revert-mode t)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; Real emacs knights don't use shift to mark things
(setq shift-select-mode nil)

;; Transparently open compressed files
(auto-compression-mode t)

;; UTF-8 please
(set-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-default buffer-file-coding-system 'utf-8-unix)

; stop creating ~ files
(setq make-backup-files nil) 

; dired
(setq dired-dwim-target t)

; IDO
(ido-mode t)

; Some settings found in `Mastering Emacs`.
(setq ido-enable-flex-matching t)
(setq ido-separator "\n")

; use company mode in all buffers.
;(global-company-mode)

; Activate winner mode
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Continue editing in the last place
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

; wrap words after 80 lines
;(add-hook 'text-mode-hook 'turn-on-auto-fill)
;(add-hook 'text-mode-hook
;  '(lambda() (set-fill-column 80)))

(set-default 'truncate-lines nil)

;helm narrowing framework
;(require 'helm-config)
(helm-mode 1)
; show available keybindings
;(require 'helm-descbinds)

(setq
 helm-always-two-windows t
 helm-split-window-default-side 'left)

; Set iexplore as default browser
;(setq browse-url-browser-function 'browse-url-generic
;       browse-url-generic-program "iexplore")

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox")

(setq browse-url-browser-function (quote browse-url-generic))


; Disable recentering
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

; browse kill-ring
(require 'browse-kill-ring)


;TODO: description
(require 'dired-x)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.ep\\'" . web-mode))

;; overwrite selected text
(delete-selection-mode t)

; Enable rainbow delimiters in all programming modes
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'paren)
;(set-face-attribute 'show-paren-match nil :foreground "black" :background "green")
(set-face-attribute 'show-paren-match nil :foreground "black" :background "#ff3e96")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(provide 'sane-defaults)
