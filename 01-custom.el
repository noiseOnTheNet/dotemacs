(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/Documents/workspace/org-personal/2020/personale_2019_2020.org" "~/Documents/workspace/Group/2020/Lavoro_2020.org"))
 '(org-capture-templates
   '(("t" "Task" entry
      (file "~/org/notes.org")
      "* TODO %^{short description} %^g
%?")
     ("a" "Meeting appointment" entry
      (file "~/org/notes.org")
      "* %^{meeting title}
%^T
%^{LOCATION}p
%^{PEOPLE}p
%i
%?")))
 '(org-refile-allow-creating-parent-nodes 'confirm)
 '(org-refile-targets '((org-agenda-files :maxlevel . 3)))
 '(org-refile-use-outline-path nil)
 '(package-selected-packages
   '(window-numbering yafolding ox-gfm ox-gmd markdown-mode tide company typescript-mode company-mode nim-mode rust-mode elm-mode org-pomodoro magit ivy-hydra hydra ivy evil use-package))
 '(safe-local-variable-values '((conda-project-env-name . "django2-python36-arda")))
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-smtp-server "relay.micron.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
