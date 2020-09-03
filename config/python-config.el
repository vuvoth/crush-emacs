(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp))))
(use-package pyenv-mode
  :ensure t
  :config
  (setenv "WORKON_HOME" "/Users/apple/opt/anaconda3/envs")
  (pyvenv-mode 1))


(provide 'python-config)

