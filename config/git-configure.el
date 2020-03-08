(use-package diff-hl
  :ensure t)

(use-package magit
  :ensure t)

(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
(add-hook 'after-init-hook 'global-diff-hl-mode)

(diff-hl-flydiff-mode +1)

(diff-hl-margin-mode +1)
(setq diff-hl-side 'right)

(provide 'git-configure)

