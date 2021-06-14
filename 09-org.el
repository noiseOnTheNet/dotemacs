(setq org-pomodoro-audio-player "C:/Users/mvezzoli/Applications/mplayer/mplayer.exe")
(setq org-pomodoro-finished-sound-args "-volume 50")
(setq org-pomodoro-start-sound-args "-volume 50")

(setq org-reveal-root "file:///C:/Users/mvezzoli/Documents/workspace/Group/reveal.js-2.6.1")
(setq org-src-fontify-natively t)

(setq org-latex-listings 'minted)
(setq org-export-latex-custom-lang-environments
      '(
	(emacs-lisp "common-lispcode")
	(python "pythoncode")
	))

(setq org-export-latex-minted-options
      '(("frame" "lines")
	("fontsize" "\\scriptsize")
	("linenos" "")))
(setq org-latex-listings 'minted)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -synctex=1 -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -synctex=1 -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -synctex=1 -interaction nonstopmode -output-directory %o %f"))
;; (setq org-latex-pdf-process
;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
;; (setq objulia-path "~/workspace/dotemacs/others/ob-julia.el")
;; (setq objulia-p (file-exists-p objulia-path))
;; (if objulia-p
;;       (load objulia-path))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (emacs-lisp . t)
   (ditaa . t)
   (dot . t)
   ;; (julia . objulia-p)
   (sql . t)
   (sqlite . t)
   (plantuml . t)
   ;(ipython . t)
   ))
;; this binds P to org-pomodoro
;; default binding of P is equivalent to p (previous item)
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (define-key org-agenda-mode-map "P"
              'org-pomodoro)))
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-outline-path-complete-in-steps nil)
(setq org-capture-templates
      '(("a" "Add Appointment" entry
	 (file "~/org/notes.org")
	 "* %^{short description} %^g
%^T%^{LOCATION}p%^{PEOPLE}p
%?%i%a
added %U")
	("t" "Add TODO" entry
	 (file "~/org/notes.org")
	 "* TODO %?
%U
%a")))
(setq org-agenda-files
      (list
       "~/workspace/org-personal/2020/personale_2019_2020.org"
       ))
;;; set timestamp locale
(setq system-time-locale "C")

(setq mv-org-planning-path 
      "~/workspace/TestReadDatetime/read_date_time/target/release/read_date_time")
(setq mv-org-planning-path 
      "c:\\Users\\mvezzoli\\workspace\\TestReadDatetime\\read_date_time\\target\\release\\read_date_time.exe")
(defun mv-org-add-planning (start-date duration)
  "add some org panning entries in current buffer"
  (interactive "sDate: \nnItems count: ")
  (let ((current-prefix-arg '(4)))
    (insert
     (shell-command-to-string
      (mapconcat 'identity
                 (list
                  mv-org-planning-path
                  start-date
                  (number-to-string duration))
                 " ")))))

