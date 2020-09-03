(use-package diff-hl)

(use-package magit
  :config
  (setq magit-push-current-set-remote-if-missing nil)
  :bind
  ("C-c g" . magit-status)  )

(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
(add-hook 'after-init-hook 'global-diff-hl-mode)

(diff-hl-flydiff-mode +1)

(diff-hl-margin-mode +1)
(setq diff-hl-side 'right)

(provide 'git-configure)
