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
(require 'dired-x)
(setq dired-dwim-target t)

(cond (
       (string= system-type "darwin")
       (setq dired-use-ls-dired t
	     insert-directory-program "/usr/local/bin/gls"
	     dired-listing-switches "-laGh1v --group-directories-first"))
      ((string= system-type "gnu/linux")
       (setq dired-use-ls-dired t
	     dired-listing-switches "-laGh1v --group-directories-first")))

(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

; IDO
(ido-mode t)

; Some settings found in `Mastering Emacs`.
(setq ido-enable-flex-matching t)

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

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox")

(setq browse-url-browser-function (quote browse-url-generic))


; DISABLE RECENTERING
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

; BROWSE KILL-RING
(require 'browse-kill-ring)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.ep\\'" . web-mode))

;; overwrite selected text
(delete-selection-mode t)

; ENABLE RAINBOW DELIMITERS IN ALL PROGRAMMING MODES
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'paren)
(set-face-attribute 'show-paren-match nil :foreground "black" :background "#ff3e96")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(display-time-mode 1)
(setq display-time-day-and-date t)
(display-time)

; No splash screen please ... jeez
(setq inhibit-startup-message t)

; open files in same frame
(setq ns-pop-up-frames nil)


;; ediff setup
(require 'ediff)
;; don't start another frame
;; this is done by default in preluse
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; put windows side by side
(setq ediff-split-window-function (quote split-window-horizontally))

;;revert windows on exit - needs winner mode
(winner-mode)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;(setq package-check-signature nil)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)


;; ivy window size
(setq ivy-height-alist
      '((t
         lambda (_caller)
         (/ (frame-height) 2))))

(desktop-save-mode 1)

(require 'which-key)
(which-key-mode)

(provide 'sane-defaults)
