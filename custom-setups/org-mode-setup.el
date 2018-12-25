(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "|" "DONE(d)")
              (sequence "FEEDBACK(b)" "FINDOUT(o)" "VERIFY(v)" "|" "DONE(d)")
              (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "DONE(d)")
              )))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "DeepSkyBlue1" :weight bold)
              ("STARTED" :foreground "yellow" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("FEEDBACK" :foreground "dark goldenrod" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("VERIFY" :foreground "DeepPink1" :weight bold)
              )))


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
   (emacs-lisp . t)
   ))


;Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)

; Use fundamental mode when editing plantuml blocks with C-c '
;(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))
(setq org-agenda-span 14)

(cond (
       (string= (system-name) "DESKTOP-SP63KME" )
       (setenv "KWORGHOME" "C:\\Users\\krzysztof\\Documents\\org_projects")
       )

      ((string= (system-name) "POZDL0135" )
       (setenv "KWORGHOME" "/home/kwalkiewicz/Documents/org_projects")

       (setq org-default-notes-file (concat (getenv "KWORGHOME") "/notes.org"))

       (setq org-agenda-files (list
                               (concat (getenv "KWORGHOME") "/tasks.org")
                               (concat (getenv "KWORGHOME") "/notes.org")
                               (concat (getenv "KWORGHOME") "/tickets.org")
                               (concat (getenv "KWORGHOME") "/incidents/incidents.org")
                               (concat (getenv "KWORGHOME") "/incidents/incidents.org")
                               "/home/kwalkiewicz/Sync/WORK/org/installs.org"
                               "/home/kwalkiewicz/Sync/WORK/org/knowledgebase.org"
                               "/home/kwalkiewicz/Sync/WORK/org/to_learn.org"
                               "/home/kwalkiewicz/Documents/org_projects/howtos.org"
                               ))
       
       (setq org-capture-templates
             '(("k" "Various TODO's" entry
                (file+headline (concat (getenv "KWORGHOME") "/tasks.org") "Uncategorized TODO entries")
                "\n\n** TODO %?\n   SCHEDULED: %t" 
                :empty-lines 1)))))

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

(setq system-time-locale "C")         ; Make sure that the weekdays in the
                                        ; time stamps of your Org mode files and
                                        ; in the agenda appear in English.

(provide 'org-mode-setup)
