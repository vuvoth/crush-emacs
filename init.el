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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(nyan-mode zenburn-theme yasnippet yaml-mode xresources-theme window-jump which-key w3m vimrc-mode use-package ubuntu-theme treemacs-projectile telephone-line tango-2-theme sr-speedbar spaceline solarized-theme smex smeargle slime-theme seti-theme restart-emacs prettier-js planet-theme plan9-theme phoenix-dark-pink-theme phoenix-dark-mono-theme paper-theme org-bullets neotree mongo moe-theme minimap markdown-mode+ magit lsp-ui lsp-treemacs lsp-java lsp-ivy linum-relative imenu-list hydandata-light-theme helm-themes helm-swoop helm-projectile helm-lsp helm-gitignore helm-ag gruvbox-theme goto-line-preview google-this god-mode flymake-json exec-path-from-shell eshell-toggle dracula-theme doom-themes doom-modeline dockerfile-mode docker diff-hl counsel-projectile company-lsp command-log-mode color-theme-sanityinc-tomorrow bliss-theme badwolf-theme anzu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
