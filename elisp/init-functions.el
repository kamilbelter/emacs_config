;;; init-functions.el --- -*- lexical-binding: t -*-

(defun wrap-lines ()
  "Function wraps lines in buffer"
  (interactive)
  (visual-line-mode t))

(defun unwrap-lines ()
  "Function wrap lines in buffer"
  (interactive)
  (visual-line-mode nil))

(defun set-utf-8 ()
  (interactive)
  (prefer-coding-system 'utf-8)
  (setq locale-coding-system 'utf-8)
  
  (set-language-environment 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (set-clipboard-coding-system 'utf-8)
  (set-file-name-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-selection-coding-system 'utf-8)
  (modify-coding-system-alist 'process "*" 'utf-8))


(provide 'init-functions)
