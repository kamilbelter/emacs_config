;;; init.el --- -*- lexical-binding: t -*-

;; load "elisp" and "site-lisp" folders (credits goes to Centaur Emacs)
(defun update-load-path (&rest _)
  "Update `load-path'."
  (dolist (dir '("site-lisp" "elisp"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(defun add-subdirs-to-load-path (&rest _)
  "Add subdirectories to `load-path'."
  (let ((default-directory (expand-file-name "site-lisp" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path))) 

(advice-add #'package-initialize :after #'update-load-path)
(advice-add #'package-initialize :after #'add-subdirs-to-load-path) 

(update-load-path)

(require 'init-consts)

(require 'init-functions)

(require 'init-gc)

(require 'init-paths)

(require 'init-pckg-mgr)

(require 'init-core)

(require 'init-winner)

(require 'init-avy)

(require 'init-ace-window)

;(require 'init-search)

(require 'init-magit)

(require 'init-lsp)

(require 'init-theme)

(require 'init-ui)

(require 'init-smartparens)

(require 'init-ispell)

(require 'init-rust)

