;;; init-orgmode.el --- -*- lexical-binding: t -*-

(use-package org-modern
  :straight t
  :after org
  :hook (org-mode . org-modern-mode))

(provide 'org-orgmode)
