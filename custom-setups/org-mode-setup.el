(setq org-todo-keywords
      (quote ((sequence "TODO(!)" "NEXT(n)" "STARTED(s)" "|" "DONE(!)")
              (sequence "FEEDBACK(b)" "FINDOUT(o)" "VERIFY(v)" "|" "DONE(!)")
              (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "DONE(!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "DeepSkyBlue1" :weight bold)
              ("STARTED" :foreground "yellow" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("FEEDBACK" :foreground "dark goldenrod" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("VERIFY" :foreground "DeepPink1" :weight bold))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)
   (ditaa . t)
   (gnuplot . t)
   (plantuml . t)
   (dot . t)
   (sql . t)
   (perl . t)
   (calc .t)
   (R . t)
   (emacs-lisp . t)))

; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate t)

; Use fundamental mode when editing plantuml blocks with C-c '
;(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))
(setq org-agenda-span 14)

;; TODO: refactor this to use $HOME variable
(cond ((string= (system-name) "DESKTOP-SP63KME")
       (setenv "KWORGHOME" "C:\\Users\\krzysztof\\Documents\\org_projects"))
      ((string= (system-name) "walkiewk-2EFFT0")
       (setenv "KWORGHOME" "/Users/walkiewk/Documents/org"))
      ((string= (system-name) "demon")
       (setenv "KWORGHOME" "/home/krzysztof/org"))
      ((string= (system-name) "walkiewk-04JG5H")
       (setenv "KWORGHOME" "/Users/walkiewk/Documents/org")))

(setq org-default-notes-file (concat (getenv "KWORGHOME") "/work/notki.org"))

(setq org-agenda-files
      (list
       (concat (getenv "KWORGHOME") "/work/notki.org")
       ;(concat (getenv "KWORGHOME") "/work/projects/PTD/ptd.org")
       (concat (getenv "KWORGHOME") "/work/projects/PTD/tickets.org")
       (concat (getenv "KWORGHOME") "/work/inbox.org")
       (concat (getenv "KWORGHOME") "/work/maybe.org")
       (concat (getenv "KWORGHOME") "/work/scheduled.org")
       ;(concat (getenv "KWORGHOME") "/priv/learning/learning-main.org")
       ))

(setq kw-org-agenda-file-location-path-string
      (concat (getenv "KWORGHOME") "/work/inbox.org"))

(setq org-capture-templates
      '(("k" "Various TODO's" entry
         (file kw-org-agenda-file-location-path-string)
         "\n\n** TODO %?\n   SCHEDULED: %T" 
         :empty-lines 1)))

(setq org-agenda-restore-windows-after-quit t)

(custom-set-faces
 '(org-level-1 ((t (:foreground "cornflower blue" :box nil :bold t))))
 '(org-level-2 ((t (:foreground "indian red" :bold t))))
 '(org-level-3 ((t (:foreground "cyan" :bold t))))
 '(org-level-4 ((t (:foreground "pink" :bold t)))))

(global-set-key (kbd "C-c x") 'org-timeline)

(setq org-agenda-start-on-weekday nil)

(setq org-ellipsis "⤵")

(add-to-list 'org-emphasis-alist
             '("*" (:foreground "yellow")))

; Fonts in src blocks in babel
(setq org-src-fontify-natively t)

(add-hook 'org-finalize-agenda-hook 'kfwz/org-agenda-to-appt 'append)

(setq system-time-locale "C")

; Do not list sub-tasks in agenda view
(setq org-agenda-todo-list-sublevels nil)

; https://www.gnu.org/software/emacs/manual/html_node/org/Closing-items.html
(setq org-log-done 'time)

(provide 'org-mode-setup)
