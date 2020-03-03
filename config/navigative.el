;; emacs navigative
;; author vuvth

(setq mac-option-modifier 'super)

(use-package projectile
  :ensure t)
(projectile-mode +1)

(use-package counsel-projectile
  :ensure t)
(counsel-projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(show-paren-mode 1)
(setq show-paren-delay 0)

(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)

(use-package treemacs-projectile
  :ensure t)

(use-package restart-emacs
  :ensure t)
(provide 'navigative)
