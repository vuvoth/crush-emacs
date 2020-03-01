;; emacs navigative
;; author vuvth

(setq mac-option-modifier 'super)

(projectile-mode +1)

(counsel-projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


(show-paren-mode 1)
(setq show-paren-delay 0)
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)


(provide 'navigative)
