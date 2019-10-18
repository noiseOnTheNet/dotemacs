
(use-package evil
  :init (evil-mode)
  :ensure t)
(use-package ivy
  :init (ivy-mode)
  :ensure t)
(use-package hydra
  :ensure t)
(use-package ivy-hydra
  :after (ivy hydra)
  :ensure t)
(use-package magit
  :ensure t)
(use-package org-pomodoro
  :ensure t)
(use-package elm-mode
  :ensure t)
(use-package rust-mode
  :ensure t)
(use-package company
  :ensure t)
(use-package typescript-mode
  :ensure t)
(use-package nim-mode
  :ensure t)
(use-package js2-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-formater-before-save)))
(use-package web-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  (setq web-mode-enable-current-element-highlight t))
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
(use-package ox-gfm
  :ensure t)
