(require 'use-package-ensure)
(setq use-package-always-defer t
      use-package-always-ensure t
      backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(use-package evil
  :init (evil-mode))
(use-package ivy
  :init (ivy-mode))
(use-package hydra)
(use-package ivy-hydra
  :after (ivy hydra))
(use-package magit)
(use-package org-pomodoro
  :init (setq org-pomodoro-long-break-length 5))
(use-package elm-mode)
(use-package yasnippet)
(use-package rust-mode)
(use-package company)
(use-package typescript-mode)
(use-package nim-mode)
(use-package scala-mode
  :mode "\\.s\\(cala\\|bt\\)$")
(use-package js2-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
(use-package tide
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-formater-before-save)))
(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  (setq web-mode-enable-current-element-highlight t))
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
(use-package ox-gfm)
(use-package yaml-mode)
(use-package yaml-imenu
  :after (yaml-mode))
(use-package yafolding)
(use-package window-numbering
  :init (window-numbering-mode))
(use-package ox-rst)
(use-package multi-term)
(use-package lsp-mode
  :hook ((scala-mode . lsp)
	 (python-mode . lsp)
	 (rust-mode . lsp))
  :bind (("<f2>" . lsp-find-definition)
	 ("<f3>" . lsp-find-references)
	 ("<f4>" . flymake-goto-next-error)
	 ("<f5>" . flymake-goto-prev-error))
  :commands lsp)
(use-package lsp-ui
  :commands lsp-ui-mode)
(use-package company-lsp
  :commands company-lsp)
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)
(use-package lsp-ivy
  :commands lsp-ivy)
(use-package htmlize)
(use-package simple-httpd
  :init (setq httpd-port 9999)) 
;;this is for using maven  
(add-hook 'compilation-filter-hook
  (lambda () (ansi-color-apply-on-region (point-min) (point-max))))
