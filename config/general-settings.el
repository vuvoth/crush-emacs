(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)


(global-company-mode +1)
(setq company-idle-delay 0.1)

(provide 'general-settings)
