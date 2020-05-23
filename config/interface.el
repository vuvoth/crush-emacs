(use-package anzu
  ;;; show number text match with search test
  :ensure t
  :config
  (global-anzu-mode +1))

(use-package prettier-js
  :ensure t
  :hook
  (js2-mode . prettier-js-mode))


(provide 'interface)

