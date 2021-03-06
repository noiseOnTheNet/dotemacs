(setq inhibit-splash-screen t)
(load-theme 'misterioso)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(org-agenda-list)
(global-display-line-numbers-mode 0)
(setq ring-bell-function 'ignore)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)
(set-frame-font "Source Code Pro" nil t)
(global-hl-line-mode +1)
