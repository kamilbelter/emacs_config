;;; early-init.el --- Early initialization. -*- lexical-binding: t -*-

;; Available since Emacs 27.1. It is run before:
;; - init.el is loaded
;; - UI initialization

;; To avoid garbage collection kick-in during startup
(setq gc-cons-threshold most-positive-fixnum)

;; required for manual package initialization
(setq package-enable-at-startup nil)

;; Inhibit resizing frame
(setq frame-inhibit-implied-resize t)

;; file hanlders are not needed during startup
(defvar file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

;; disable site run file
(setq site-run-file nil)

;; turn off UI elements: toolbar, menubar and vertical scrollbars
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(when (featurep 'ns)
  (push '(ns-transparent-titlebar . t) default-frame-alist))

(provide 'early-init)
