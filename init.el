;; .emacs.d/init.el
;; @author vuvth - Vu Vo Thanh
;; emacs config file

;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)

;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Initializes the package infrastructure
(package-initialize)

(use-package exec-path-from-shell
  :ensure t
  :config
  (setq exec-path-from-shell-check-startup-files nil)
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/config")

(require 'interface)
(require 'navigative)
(require 'programming-config)
(require 'git-configure)
(require 'org-config)
(require 'utils)
(require 'eshell-config)
(require 'markdown-config)
(require 'tramp-config)
