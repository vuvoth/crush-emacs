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

(setq gc-cons-threshold 100000000)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/modules")

;; (require 'keikei-theme)
(require 'kei-mode)
(require 'default-config)
(require 'kei-mode-line-config)
(require 'interface)
(require 'navigative)
(require 'init-sql)
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
(require 'gradle-company)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fci-rule-color "#f8fce8")
 '(hl-paren-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(hl-paren-colors '("#40883f" "#0287c8" "#b85c57"))
 '(package-selected-packages
   '(spaceline go-mode all-the-icons-ivy-rich arc-dark-theme subatomic-theme hamburg-theme gotham-theme tommyh-theme zen-and-art-theme zzz-to-char zweilight-theme zoom-window zenburn-theme yoshi-theme yasnippet-snippets which-key warm-night-theme use-package undo-tree underwater-theme ubuntu-theme twilight-theme twilight-bright-theme telephone-line sunny-day-theme sunburn-theme sublime-themes spacemacs-theme solarized-theme soft-morning-theme smyx-theme sml-modeline smex smartparens smart-mode-line rust-mode restart-emacs rainbow-mode professional-theme prettier-js plantuml-mode plan9-theme pdf-tools paredit paganini-theme org-bullets nyan-mode npm-mode nord-theme neotree moe-theme material-theme magit lsp-java kaolin-themes immaterial-theme hydandata-light-theme helm-tramp helm-themes groovy-mode graphviz-dot-mode gradle-mode goto-line-preview google-this github-theme github-modern-theme flymake-gradle flycheck-gradle exec-path-from-shell ejc-sql dracula-theme dockerfile-mode docker-compose-mode docker diff-hl darktooth-theme dakrone-light-theme counsel-tramp counsel-projectile company-lsp command-log-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized chess blackboard-theme beacon anzu anti-zenburn-theme ample-theme all-the-icons ahungry-theme))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(telephone-line-mode nil)
 '(yas-global-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(mode-line ((t (:background "wheat1" :foreground "black")))))
