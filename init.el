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

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/config")

(require 'default-config)
(require 'kei-mode-line-config)
(require 'interface)
(require 'navigative)
;; (require 'helm-config)
(require 'ivy-config)
(require 'programming-config)
(require 'git-configure)
(require 'org-config)
(require 'utils)
(require 'shell-config)
(require 'markdown-config)
(require 'window-and-buffer)
(require 'tramp-config)
(require 'hydra-config)
(require 'plantuml-config)

(require 'kei-mode)

(add-to-list 'load-path "~/.emacs.d/modules")

(require 'gradle-company)
(provide 'init)
