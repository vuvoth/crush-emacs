(use-package company
  :ensure t
  :hook ((prog-mode . company-mode)
	 (emacs-lisp-mode . company-mode))
  :config
  (setq
   company-minimum-prefix-length 2
   company-idle-delay 0.1))

(use-package lsp-mode
  :ensure t
  :init (setq lsp-keymap-prefix "M-q")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (js-mode . lsp)
	 (python-mode . lsp)
	 (javascript-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)


;; optionally
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
;; lsp company backend
(use-package company-lsp
  :ensure t
  :config
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'company-lsp))
  :commands company-lsp)

;; if you are ivy user
(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :ensure t
  :config
  (lsp-treemacs-sync-mode 1)  
  :commands lsp-treemacs-errors-list)

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))
;; optional if you want which-key integration
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'programming-config)
