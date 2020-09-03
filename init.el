;; .emacs.d/init.el
;; @author vuvth - Vu Vo Thanh
;; emacs config file


(setq gc-cons-threshold 100000000)

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
  :config
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/modules")

;; (require 'keikei-theme)
(require 'kei-mode)
(require 'default-config)
;; (require 'kei-mode-line-config)
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
(require 'python-config)
(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fci-rule-color "#4A4159")
 '(hl-paren-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(hl-paren-colors '("#40883f" "#0287c8" "#b85c57"))
 '(nrepl-message-colors
   '("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896"))
 '(package-selected-packages
   '(xml+ zzz-to-char zpl-mode zoom-window zenburn-theme yasnippet-snippets yascroll which-key use-package tommyh-theme telephone-line sublime-themes subatomic-theme spacemacs-theme spaceline solarized-theme soft-stone-theme soft-morning-theme sml-modeline smex smartparens smart-mode-line silkworm-theme sexy-monochrome-theme scala-mode rust-mode restart-emacs rebecca-theme rainbow-mode pyenv-mode protobuf-mode professional-theme prettier-js plantuml-mode planet-theme plan9-theme pdf-tools paredit paganini-theme org-bullets nyan-mode npm-mode nothing-theme nord-theme neotree naysayer-theme moe-theme minions maven-test-mode material-theme magit lsp-ui lsp-scala lsp-python-ms lsp-metals lsp-java lsp-ivy leuven-theme hydandata-light-theme htmlize helm-tramp helm-themes helm-lsp hamburg-theme gruvbox-theme groovy-mode graphviz-dot-mode gradle-mode goto-line-preview google-this go-mode github-theme github-modern-theme flymake-gradle flycheck-gradle firecode-theme farmhouse-theme faff-theme exec-path-from-shell evil espresso-theme elpy ejc-sql eclipse-theme dracula-theme dockerfile-mode docker-compose-mode docker dired-toggle diff-hl counsel-tramp counsel-projectile company-solidity company-lsp company-anaconda command-log-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized chess blackboard-theme beacon auto-complete anzu ample-theme all-the-icons-ivy-rich))
 '(pdf-view-midnight-colors '("#FDF4C1" . "#282828"))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(vc-annotate-background "#433844")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#a7a6d4")
     (280 . "#676694")
     (300 . "#777694")
     (320 . "#8786b4")
     (340 . "#9796c4")
     (360 . "#b48ead")))
 '(vc-annotate-very-old-color "#b48ead")
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
