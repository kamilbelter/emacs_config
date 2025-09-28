;;; init-theme.el --- -*- lexical-binding: t -*-

(use-package catppuccin-theme
  :straight t
  :init
  (setq catppuccin-flavor 'frappe)
  :hook (after-init . (lambda () (load-theme 'catppuccin))))

(provide 'init-theme)
