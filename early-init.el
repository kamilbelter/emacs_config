;;; early-init.el -*- lexical-binding: t; -*-

;; Available since Emacs 27.1. It is run before:
;; - init.el is loaded
;; - UI initialization

;; maximize gc size at startup to avoid gc slowing down startup
(setq gc-cons-threshold most-positive-fixnum)

;; unset file-name-handler-alist
(defvar file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

;; prevent package.el loading 
(setq package-enable-at-startup nil)

;; unset site run file
(setq site-run-file nil)

;; disable UI elements
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(when (featurep 'ns)
  (push '(ns-transparent-titlebar . t) default-frame-alist))

(provide 'early-init)
