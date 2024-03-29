;;; init-paths.el --- -*- lexical-binding: t -*-

(setq exec-path (append '("C:/Program Files/Git/bin/"
                          "C:/msys64/mingw64/bin"
                          "C:/ProgramData/chocolatey/bin/" ) exec-path))

;; make sure Unix tools in from of 'exec-path'
(let ((bash (executable-find "bash")))
  (when bash
    (push (file-name-directory bash) exec-path)))
;; update PATH from exec-path
(let ((path (mapcar 'file-truename
                    (append exec-path
                            (split-string (getenv "PATH") path-separator t)))))
  (setenv "PATH" (mapconcat 'identity (delete-dups path) path-separator)))

;; add 7zip to arc-mode (open archives in Emacs)
(if (file-exists-p "C:/Program Files/7-Zip")
    (add-to-list 'exec-path "C:/Program Files/7-Zip")
  (message "7-Zip not found."))

(provide 'init-paths)
