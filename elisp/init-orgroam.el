;;; init-orgroam.el --- -*- lexical-binding: t -*-

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "~/Documents/RoamNotes"))
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n g" . org-roam-graph)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n j" . org-roam-dailies-capture-today)
	 ("C-M-i" . completion-at-point))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (setq org-roam-dailies-directory "journal/")
  (org-roam-db-autosync-mode)
  (org-roam-setup))

(use-package emacsql
  :straight (emacsql :type git :host github :repo "magit/emacsql"))

(provide 'init-orgroam)
