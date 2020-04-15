(use-package helm-tramp
  :ensure t)

(require 'tramp)
(setq tramp-default-method "ssh")
(setq tramp-verbose 6)

(defun kei/exit-tramp ()
  (interactive)
  (projectile-mode 1))

(defun kei/start-tramp ()
    (interactive)
  (projectile-mode 0))

(provide 'tramp-config)
