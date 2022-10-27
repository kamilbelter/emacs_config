;;; init-selectrum.el --- -*- lexical-binding: t -*-

(use-package selectrum
  :straight t
  :init
  (use-package orderless
    :straight t)
  :config
  (selectrum-mode +1)
  (setq completion-styles '(orderless))
  (savehist-mode)
  (setq orderless-skip-highlighting (lambda () selectrum-is-active))
  (setq selectrum-highlight-candidates-function #'orderless-highlight-matches)
)

(provide 'init-selectrum)
