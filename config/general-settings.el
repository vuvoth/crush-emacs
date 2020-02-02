
(helm-mode +1)

(helm-autoresize-mode 1)
(setq  helm-autoresize-max-height 30)
(setq  helm-autoresize-min-height 30)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)


(global-company-mode +1)
(setq company-idle-delay 0.1)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(provide 'general-settings)
