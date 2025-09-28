;;; init-theme.el --- -*- lexical-binding: t -*-

(use-package catppuccin-theme
  :straight t
  :config
  (setq catppuccin-flavor 'frappe)
  (load-theme 'catppuccin))

(provide 'init-theme)
