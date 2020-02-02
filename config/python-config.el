(add-to-list 'company-backends 'company-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)

(setq anaconda-mode-localhost-address "localhost")

(setq python-shell-interpreter "python3")


;; ====================================
;; Development Setup
;; ====================================
;; Enable elpy
(elpy-enable)
(setq elpy-rpc-virtualenv-path 'current)
;; Use IPython for REPL
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(provide 'python-config)
