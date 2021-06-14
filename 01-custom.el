(setq mv-org-files (seq-filter #'file-exists-p  '("~/workspace/org-personal/birthdays.org" "~/Documents/workspace/Group_2021/Lavoro_2021.org" "~/workspace/org-personal/2020/personale_2019_2020.org")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(straight-disable-native-compilation t))
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(org-agenda-files mv-org-files)
 '(org-agenda-start-on-weekday nil)
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   '(evil-leader haskell-mode counsel discover org-jira tide nim-mode simple-httpd scala-mode hyperbole htmlize lsp-mode ob-ipython ess org-tempo ox-rst window-numbering yaml-imenu yaml-mode 0x0 0blayout origami yafolding use-package))
 '(safe-local-variable-values '((conda-project-env-name . "django2-python36-arda")))
 '(send-mail-function 'smtpmail-send-it)
 '(show-paren-mode t)
 '(smtpmail-smtp-server "relay.micron.com" t)
 '(smtpmail-smtp-service 25 t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro Semibold" :foundry "outline" :slant normal :weight semi-bold :height 120 :width normal)))))
