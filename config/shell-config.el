(add-hook 'shell-mode-hook 'company-mode)

;; (defun kei/shell-commit-command ()
;;   (interactive)
;;   (company-complete)
;;   (comint-send-input))

(define-key shell-mode-map (kbd "<tab>") 'company-complete)
;; (define-key shell-mode-map (kbd "RET") 'kei/shell-commit-command)
(define-key global-map (kbd "C-`") 'shell)
(provide 'shell-config)
