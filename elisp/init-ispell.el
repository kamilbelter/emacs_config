;;; init-ispell.el --- -*- lexical-binding: t -*-

(use-package ispell
  :straight t
  :bind
  (("C-c w" . ispell-word)
   ("C-c r" . ispell-region))
  
  :config
  (setenv "LANG" "pl_PL")
  (setq-default ispell-program-name "hunspell.exe")
  (with-eval-after-load "ispell"
    (setq ispell-really-hunspell t)
    (setq ispell-program-name "hunspell.exe")
    (setq ispell-dictionary "pl_PL")
    ;; ispell-set-spellchecker-params has to be called
    ;; before ispell-hunspell-add-multi-dic will work
    (ispell-set-spellchecker-params)
    (ispell-hunspell-add-multi-dic "pl_PL,en_US"))
  
  (add-to-list 'ispell-local-dictionary-alist '("polish-hunspell"
						"[[:alpha:]]"
						"[^[:alpha:]]"
						"[']"
						t
						("-d" "c:\\Apps\\dictionaries\\pl_PL"); Dictionary file name
						nil
						iso-8859-2))

  (add-to-list 'ispell-local-dictionary-alist '("english-hunspell"
						"[[:alpha:]]"
						"[^[:alpha:]]"
						"[']"
						t
						("-d" "c:\\Apps\\dictionaries\\en_US")
						nil
						iso-8859-2)) )

(provide 'init-ispell)
