;; vuvth - Vu Vo Thanh
;; emacs use company and lsp-mode


(use-package company
  :ensure t
  :hook ((prog-mode . company-mode)
	 (emacs-lisp-mode . company-mode))
  :config
  (setq
   company-tooltip-maximum-width 100
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
  :commands lsp
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-enable-snippet t
	lsp-enable-file-watchers nil)
  :bind
  ("M-s f" . prettier-js)
  ("M-]" . lsp-find-definition)
  ("M-<mouse-1>" . lsp-find-definition)
  ("M-[" . xref-pop-marker-stack))

(use-package lsp-java
  :ensure t
  :config
  (require 'lsp-java)
  (add-hook 'java-mode-hook #'lsp))

(use-package company-lsp
  :ensure t
  :config
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'company-lsp))
  :commands company-lsp)


;; (use-package yasnippet
;;   :ensure t
;;   :config
;;   (yas-reload-all)
;;   (add-hook 'prog-mode-hook #'yas-minor-mode))

;; (use-package yasnippet-snippets
;;   :ensure t)
;; optional if you want which-key integration
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package rust-mode
  :ensure t)

(provide 'programming-config)
;;; programming-config.el ends here


