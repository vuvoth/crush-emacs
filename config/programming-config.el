(add-to-list 'exec-path "~/.nvm/versions/node/v8.16.2/bin")

(use-package lsp-mode
  :ensure t
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  :init (setq lsp-keymap-prefix "M-q")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (prog-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)


;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode
  ;; :ensure t)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(lsp-treemacs-sync-mode 1)

;; optional if you want which-key integration
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2
(provide 'programming-config)
