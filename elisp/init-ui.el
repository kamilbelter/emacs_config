;;; init-ui.el --- -*- lexical-binding: t -*-

;; font
(set-frame-font "Roboto Mono")

;; highlight the current line
(global-hl-line-mode +1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(provide 'init-ui)
