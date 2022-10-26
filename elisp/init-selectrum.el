;;; init-selectrum.el --- -*- lexical-binding: t -*-

(use-package selectrum
  :straight t
  :init
  (use-package prescient
    :straight t)
  :config
  (selectrum-mode +1)
  (selectrum-prescient-mode +1)
  (selectrum-persist-mode +1)
)

(provide 'init-selectrum)
