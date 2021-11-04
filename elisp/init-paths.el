;;; init-paths.el --- -*- lexical-binding: t -*-

;; add folders to PATH
(let (
      (mypaths
       '(
         "C:/Python36"
         "C:/Users/kamil/AppData/Roaming/npm"
         "C:/Program Files (x86)/nodejs/"
         "C:/Program Files/Git/bin"
         "C:/ProgramData/chocolatey/bin"
         "C:/Program Files (x86)/GnuWin32/bin"
         ) )
      )

  (setenv "PATH" (mapconcat 'identity mypaths ";") )
  (setq exec-path (append mypaths (list "." exec-directory)) ))


(provide 'init-paths)
