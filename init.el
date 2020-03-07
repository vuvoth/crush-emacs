;; .emacs.d/init.el

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
  :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/config")


(require 'interface)
(require 'navigative)
(require 'programming-config)
(require 'git-configure)
(require 'utils)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(json-mode zenburn-theme zen-and-art-theme yasnippet yaml-mode xresources-theme which-key use-package ubuntu-theme treemacs-projectile telephone-line tango-2-theme spaceline-all-the-icons solarized-theme smex smeargle slime-theme seti-theme restart-emacs prettier-js planet-theme neotree minimap magit lsp-ui lsp-treemacs lsp-ivy linum-relative helm google-this exec-path-from-shell doom-modeline dockerfile-mode diff-hl counsel-projectile company-lsp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
