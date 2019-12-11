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
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-babel-load-languages
 '((R . t)
   (python . t)
   (emacs-lisp . t)
   (ditaa . t)
   (dot . t)
   (sql . t)
   (sqlite . t)
   (plantuml . t)
   (ipython . t)
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
