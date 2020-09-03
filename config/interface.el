(use-package anzu
  ;;; show number text match with search test
  :config
  (global-anzu-mode +1))

(use-package prettier-js
  :hook
  (js2-mode . prettier-js-mode))


(provide 'interface)

