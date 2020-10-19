(setq inhibit-splash-screen t)
(load-theme 'misterioso)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(org-agenda-list)
(toggle-frame-fullscreen)
(require 'display-line-numbers)
(defcustom display-line-numbers-exempt-modes '(eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode doc-view-mode image-mode vterm-mode shell-mode term-mode ansi-term-mode)
  "Major modes on which to disable the linum mode, exempts them from global requirement"
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "turn on line numbers but excempting certain majore modes defined in `display-line-numbers-exempt-modes'"
  (if (and
       (not (member major-mode display-line-numbers-exempt-modes))
       (not (minibufferp)))
      (display-line-numbers-mode)))(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq ring-bell-function 'ignore)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)
(set-frame-font "Source Code Pro" nil t)
(global-hl-line-mode +1)
