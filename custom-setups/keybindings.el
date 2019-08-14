;;;;;;;;;;; GLOBAL KEYBINDINGS AVAILABLE TO FRESH EMACS INSTALL ;;;;;;;;;;

;; Increase/decrease font bind to C-+/C-
(global-set-key [C-wheel-up] 'text-scale-increase)
(global-set-key [C-wheel-down] 'text-scale-decrease)
(global-set-key [(control ?+)] 'text-scale-increase)
(global-set-key [(control ?-)] 'text-scale-decrease)
(global-set-key [(C-kp-0)] 'text-scale-decrease)

;;; SPLIT WINDOWS ;;;
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below)
(global-set-key (kbd "C-3") 'split-window-right)

;;; resize windows ;;;
(global-set-key (kbd "S-C-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)
(global-set-key (kbd "S-C-<up>") 'shrink-window)

; Repeat last action
(global-set-key [(control .)] 'repeat)
(global-set-key [(control enter)] 'repeat)

(global-set-key (kbd "C-c C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;Aliases
(defalias 'qrr 'query-replace-regexp)
(defalias 'ttl 'toggle-truncate-lines)
(defalias 'eb 'eval-buffer)
(defalias 'er 'eval-region)


;;;;;;;;;;; GLOBAL KEYBINDINGS AVAILABLE ONCE PACKAGES GET INSTALLED ;;;;;;;;;;
(global-set-key (kbd "M-x") 'helm-M-x) 
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x r l" ) 'helm-bookmarks)
(global-set-key (kbd "C-c h") 'helm-imenu)
(global-set-key (kbd "C-c C-f") 'helm-find)

;;; KEY CHORDS ;;;
(key-chord-mode 1)
(key-chord-define-global "'/" 'ace-jump-mode)
(key-chord-define-global ";." 'ace-jump-buffer)
(key-chord-define-global "FF" 'ido-find-file)
(key-chord-define-global "XX" 'xah-new-empty-buffer)
(key-chord-define-global "BB" 'helm-bookmarks)


; magit shortcuts
(defalias 'ml 'magit-log-all)
(defalias 'ms 'magit-status)
(defalias 'mc 'magit-commit)
(defalias 'md 'magit-diff)
(defalias 'mpl 'magit-push)
(defalias 'mps 'magit-pull)

;;; MULTIPLE CURSORS ;;;
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)


;; When you want to add multiple cursors not based on continuous
;; lines, but based on keywords in the buffer, use:
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; Rectangular region mode
(global-set-key (kbd "C-q") 'set-rectangular-region-anchor)


;; PROVIDED BY move-text
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)
(global-set-key "\C-cd" 'kfwz-duplicate-line)

;; ace-window
(global-set-key (kbd "C-<f12>") 'ace-window)
(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(global-set-key (kbd "M-<f1>") 'kfwz-compile-all-elisp-files)
(global-set-key (kbd "M-i") 'kfwz-kill-line-up)


;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

; org-mode keybindings
(global-set-key (kbd "C-c a") 'org-agenda)

; store link to file/location in org-mode
(global-set-key "\C-cl" 'org-store-link)

; switch to other org buffer
(global-set-key "\C-cb" 'org-switchb)
(global-set-key (kbd "<mouse-3>") 'helm-imenu)

(define-key global-map "\C-cc" 'org-capture)
(global-set-key (kbd "M-<f4>") 'save-buffers-kill-terminal)

(global-set-key (kbd "C-<f8>") 'ispell-region)

(key-chord-define-global "hh" 'org-html-export-to-html)

(global-set-key (kbd "C-c C-s") 'rgrep)

(global-set-key (kbd "M-]") 'other-window)
(global-set-key (kbd "M-[") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "C-c q") 'dired-toogle-read-only)

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char))

(global-set-key [f8] 'neotree-toggle)

(provide 'keybindings)
