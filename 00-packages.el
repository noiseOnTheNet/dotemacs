(defvar bootstrap-version)
(setq comp-deferred-compilation-black-list '())
(setq straight-disable-native-compilation t)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
;; (straight-use-package 'evil-leader)
;; (straight-use-package 'counsel)

;;(require 'use-package-ensure)
;; (setq use-package-always-defer t
;;       use-package-always-ensure t)
(use-package org-plus-contrib
  ;; :straight t
  )
(use-package org
   ;; :straight t
  )

(setq backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(use-package evil
  :straight t
  ;;:init (setq evil-want-C-i-jump nil)
  ;;(evil-mode))
  )
(use-package evil-leader
  :straight t
  :init
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "0" 'delete-window
    "1" 'delete-other-windows
    "2" 'split-window-horizontally
    "3" 'split-window-vertically
    "m" 'magit-status
    "s" 'org-save-all-org-buffers
    "p" 'projectile-command-map
    "d" 'org-table-copy-down
    "c" 'org-clone-subtree-with-time-shift
    "t" 'org-trello-sync-card
    "T" 'org-trello-sync-buffer
    "o" 'other-window
    "c" 'compile
    "r" 'recompile
    "e" 'find-file
    "f" 'swiper
    "P" 'smerge-previous
    "N" 'smerge-next
    "K" 'smerge-keep-current
    "b" 'switch-to-buffer
    "k" 'kill-buffer))
(use-package counsel
  :straight t)
(use-package ivy
  :straight t
  :init (ivy-mode))
(use-package hydra
  :straight t
  )
(use-package ivy-hydra
  :straight t
  :after (ivy hydra))
(use-package magit
  :straight t
  )
(use-package org-pomodoro
  ;;:straight t
  :init (setq org-pomodoro-long-break-length 5))
(use-package elm-mode
  :straight t
  )
(use-package yasnippet
  :straight t
  )
(use-package rust-mode
  :straight t
  )
(use-package company
  :straight t
  )
(use-package typescript-mode
  :straight t
  )
(use-package scala-mode
  :straight t
  :mode "\\.s\\(cala\\|bt\\)$")
(use-package js2-mode
  :straight t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
(use-package tide
  :straight t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-formater-before-save)))
(use-package web-mode
  :straight t
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  (setq web-mode-enable-current-element-highlight t))
(use-package markdown-mode
  :straight t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
(use-package ox-gfm
;;  :straight t
  )
(use-package yaml-mode
  :straight t
  )
(use-package yaml-imenu
  :straight t
  :after (yaml-mode))
(use-package yafolding
  :straight t
  )
(use-package window-numbering
  :straight t
  :init (window-numbering-mode))
(use-package ox-rst
;;  :straight t
  )
(use-package multi-term
  :straight t
  )
(use-package lsp-mode
  :straight t
  :hook ((scala-mode . lsp)
	 (python-mode . lsp)
	 (rust-mode . lsp))
  :bind (("<f2>" . lsp-find-definition)
	 ("<f3>" . lsp-find-references)
	 ("<f4>" . flymake-goto-next-error)
	 ("<f5>" . flymake-goto-prev-error))
  :commands lsp)
(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode)
(use-package company-lsp
  :straight t
  :commands company-lsp)
(use-package lsp-treemacs
  :straight t
  :commands lsp-treemacs-errors-list)
(use-package lsp-ivy
  :straight t
  :commands lsp-ivy)
(use-package htmlize
  :straight t
  )
(use-package simple-httpd
  :straight t
  :init (setq httpd-port 9999)) 
(use-package conda
  :straight t
  :init
  (let ((mv-conda-path
	 (if (equal (system-name) "bolhdppclient03")
	     "/opt/miniconda"
	   "~/miniconda3")))
    (if (file-directory-p (expand-file-name mv-conda-path))
	(progn
	  (setq conda-anaconda-home (expand-file-name mv-conda-path))
	  (setq conda-env-home-directory (expand-file-name mv-conda-path))))))
;;this is for using maven  
(add-hook 'compilation-filter-hook
  (lambda () (ansi-color-apply-on-region (point-min) (point-max))))

(use-package evil-org
  :straight t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
(use-package org-trello
  :straight t
  )
(use-package csv-mode
  :straight t
  )
;;(use-package discover)
(use-package ess
  :straight t
  :config
  (setq inferior-julia-program "/home/mvezzoli/bin/julia"))
(use-package julia-mode
  :straight t
  )
(use-package julia-repl
  :straight t
  )
(use-package projectile
  :init (projectile-global-mode)
  :straight t
  )
(use-package dockerfile-mode
  :straight t
  )
(add-hook 'python-mode-hook 'display-line-numbers-mode)
(add-hook 'elm-mode-hook 'display-line-numbers-mode)
(add-hook 'rust-mode-hook 'display-line-numbers-mode)
(add-hook 'org-mode-hook 'display-line-numbers-mode)
;;______________________________________________________________________
;;;;  Installing Org with straight.el
;;; https://github.com/raxod502/straight.el/blob/develop/README.md#installing-org-with-straightel
(require 'subr-x)
(straight-use-package 'git)

(defun org-git-version ()
  "The Git version of 'org-mode'.
Inserted by installing 'org-mode' or when a release is made."
  (require 'git)
  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (git-run "describe"
              "--match=release\*"
              "--abbrev=6"
              "HEAD"))))

(defun org-release ()
  "The release version of 'org-mode'.
Inserted by installing 'org-mode' or when a release is made."
  (require 'git)
  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (string-remove-prefix
      "release_"
      (git-run "describe"
               "--match=release\*"
               "--abbrev=0"
               "HEAD")))))

(provide 'org-version)
(straight-use-package 'evil)
