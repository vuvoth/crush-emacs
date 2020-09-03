;; vuvth - Vu Vo Thanh
;; emacs use company and lsp-mode


(use-package company
  :hook ((prog-mode . company-mode)
	 (emacs-lisp-mode . company-mode))
  :config
  (setq
   company-tooltip-maximum-width 100
   company-minimum-prefix-length 2
   company-idle-delay 0.1))

(use-package lsp-mode
  :init (setq lsp-keymap-prefix "M-q")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (js-mode . lsp)
	 (javascript-mode . lsp)
	 (scala-mode . lsp)
         (lsp-mode . lsp-lens-mode)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-enable-snippet t
	lsp-enable-file-watchers nil)
  :bind
  ("M-s f" . prettier-js)
  ("M-." . lsp-find-definition)
  ("M-<mouse-1>" . lsp-find-definition)
  ("M-," . xref-pop-marker-stack))


(use-package lsp-java
  :config
  (require 'lsp-java)
  (add-hook 'java-mode-hook #'lsp)
  (setq kei/lombok-jar (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.12/lombok-1.18.12.jar"))
  (setq lsp-java-vmargs
        `("-noverify"
          "-Xmx2G"
          "-XX:+UseG1GC"
          "-XX:+UseStringDeduplication"
          ,(concat "-javaagent:" kei/lombok-jar)
          ,(concat "-Xbootclasspath/a:" kei/lombok-jar))
	))
  

(use-package company-lsp
  :config
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'company-lsp))
  :commands company-lsp)

(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java)



(use-package yasnippet
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))

(use-package yasnippet-snippets)
;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))

(use-package rust-mode)

(provide 'programming-config)


 (add-hook 'java-mode-hook (lambda ()
                                (setq c-basic-offset 4
                                      tab-width 4
                                      indent-tabs-mode t)))
;;; programming-config.el ends here


