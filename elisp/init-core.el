;;; init-core.el --- -*- lexical-binding: t -*-

;; Unbind unwanted key settings
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "M-z") nil)
(global-set-key (kbd "M-m") nil)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "M-/") nil)
(global-set-key (kbd "<f11>") nil)

;; Alt key is Meta
(setq x-alt-keysym 'meta)

;; Move up/down paragraph
(global-set-key (kbd "M-n") #'forward-paragraph)
(global-set-key (kbd "M-p") #'backward-paragraph)

;; f4 switch hpp/cpp
(global-set-key (kbd "<f4>") 'ff-find-other-file)

;; File extension modes
(add-to-list 'auto-mode-alist '("\\.in\\'" . text-mode))
(add-to-list 'auto-mode-alist '("\\.out\\'" . text-mode))
(add-to-list 'auto-mode-alist '("\\.args\\'" . text-mode))
(add-to-list 'auto-mode-alist '("\\.bb\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bbclass\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd\\'" . markdown-mode))

;; Replace selection on insert
(delete-selection-mode 1)

;; When buffer is closed, saves the cursor location
(save-place-mode 1)

;; Sentence ends with single space
(setq sentence-end-double-space nil)

;; Set history-length longer
(setq-default history-length 500)
;; History settings
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)

;; show time
(display-time-mode 1)

;; Move the backup fies to user-emacs-directory/.backup
(setq backup-directory-alist `(("." . ,(expand-file-name ".backup" user-emacs-directory))))

;; Ask before killing emacs
(setq confirm-kill-emacs 'y-or-n-p)

;; Turn Off Cursor Alarms
(setq ring-bell-function 'ignore)

;; Show Keystrokes in Progress Instantly
(setq echo-keystrokes 0.1)

;; Don't Lock Files
(setq-default create-lockfiles nil)

;; Cursor
;;  blink off
(blink-cursor-mode -1)
;;  paren matching at point off
(setq blink-matching-paren nil)
;;  turn off cursor stretch
(setq x-stretch-cursor nil)

;; Compilation settings
(setq-default compilation-always-kill t) ; kill compilation process before starting another
(setq-default compilation-ask-about-save nil) ; save all buffers on 'compile'
(setq-default compilation-scroll-output t)

;; Move Custom-Set-Variables to Different File
(setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(load custom-file 'noerror)

;; Add a new line automatically at the end of the save file
(setq require-final-newline t)

;; Fullscreen
(when (display-graphic-p)
  (add-hook 'window-setup-hook #'fix-fullscreen-cocoa)
  (bind-keys ("C-<f11>" . toggle-frame-fullscreen)))

;; Set recent files
(use-package recentf
  :ensure nil
  :straight t
  :hook (after-init . recentf-mode)
  :custom
  (recentf-auto-cleanup "05:00am")
  (recentf-max-saved-items 200)
  (recentf-exclude '((expand-file-name package-user-dir)
		     ".cache"
		     ".cask"
		     ".elfeed"
		     "bookmarks"
		     "cache"
		     "ido.*"
		     "persp-confs"
		     "recentf"
		     "undo-tree-hist"
		     "url"
		     "COMMIT_EDITMSG\\'")))

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; disable compilation warning at start; TODO
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-core)
