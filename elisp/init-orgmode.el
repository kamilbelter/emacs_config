;;; init-orgmode.el --- -*- lexical-binding: t -*-

(use-package org
  :straight t ; use latests-greatest
  :config
  (setq org-M-RET-may-split-line '((default . nil)))
  (setq org-insert-heading-respect-content t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)

  (setq org-directory "~/Documents/org/")
  (setq org-agenda-files (list org-directory))

  (setq org-todo-keywords
	'((sequence "TODO(t)" "ONHOLD(h!)" "|" "CANCEL(c!)" "DONE(d!)"))))

(use-package org-modern
  :straight t
  :custom
  (org-modern-star 'replace)
  (org-modern-checkbox nil)
  (org-modern-table nil)
  :hook (org-mode . global-org-modern-mode))

(provide 'init-orgmode)
