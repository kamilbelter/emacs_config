;;; init-avy.el --- -*- lexical-binding: t -*-

(use-package avy
  :straight t
  :bind
  (("C-z c" . avy-goto-char-timer)
   ("C-z l" . avy-goto-line))
  :custom
  (avy-timeout-seconds 0.3)
  (avy-style 'pre)
  :custom-face
  (avy-lead-face ((t (:background "#51afef" :foreground "#870000" :weight bold)))))

(provide 'init-avy)
